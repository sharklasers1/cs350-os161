#include <types.h>
#include <kern/errno.h>
#include <kern/unistd.h>
#include <kern/wait.h>
#include <lib.h>
#include <syscall.h>
#include <current.h>
#include <proc.h>
#include <proctable.h>
#include <thread.h>
#include <addrspace.h>
#include <copyinout.h>
#include <mips/trapframe.h>
#include <vfs.h>
#include <kern/fcntl.h>

void sys__exit(int exitcode) {

  struct addrspace *as;
  struct proc *p = curproc;

  DEBUG(DB_SYSCALL,"Syscall: _exit(%d)\n",exitcode);

  KASSERT(curproc->p_addrspace != NULL);
  as_deactivate();
  /*
   * clear p_addrspace before calling as_destroy. Otherwise if
   * as_destroy sleeps (which is quite possible) when we
   * come back we'll be calling as_activate on a
   * half-destroyed address space. This tends to be
   * messily fatal.
   */
  as = curproc_setas(NULL);
  as_destroy(as);

  /* detach this thread from its process */
  /* note: curproc cannot be used after this call */
  proc_remthread(curthread);

  // Ensure synchronization in case another process is trying to getpid()
  // and inform the proctable that the process is exiting.
  lock_acquire(procTableLock);
    proctable_exit_process(p, exitcode);
  lock_release(procTableLock);

  thread_exit();
  /* thread_exit() does not return, so we should never get here */
  panic("return from thread_exit in sys_exit\n");
}

int
sys_getpid(pid_t *retval)
{
  KASSERT(curproc != NULL);

  struct proc *p = curproc;

  // return the current process' PID.
  *retval = getPID(p);
  return(0);
}

int
sys_waitpid(pid_t pid, // pid that you want to wait for
	    userptr_t status, // status address you want the exitcode returned in
	    int options, // number of options
	    pid_t *retval) // return value for waitpid, if success should be pid of process waitee.
{
  int exitstatus = 0;
  int result = 0;

  if (options != 0) {
    return(EINVAL);
  }

  lock_acquire(procTableLock);
    struct proc *child = proctable_get_process(pid);
    struct proc *parent = curproc;

    // Error if PID waited on does not refer to a valid process
    if (child == NULL) {
      result = ESRCH;
    }
    // Error if requested PID was not a child of parent process
    else if (getPPID(child) != getPID(parent)) {
      result = ECHILD;
    }

    else if (status == NULL || !as_stack_valid((int)status)) {
      result = EFAULT;
    }

    // If any of the above errors were set, return error
    if (result) {
      lock_release(procTableLock);
      return(result);
    }
    
    // Otherwise, if waitpid call was valid, check to see if child has exited.
    // If child is still running, have parent wait for child to exit
    // Need a while loop, Mesa semantics, because a different child could wake him up,
    // Even though the one we're waiting on here is still running
    while (getState(child) == PROC_RUNNING) {
      cv_wait(child->wait_cv, procTableLock);
    }

    // We are now awoken because we waited for the child to exit,
    // or the child had already exited. Either way, we can now collect
    // their exit code. We will remove them from proctable when we exit.
    exitstatus = getExitcode(child);

  lock_release(procTableLock);

  // copy the exitstatus of the process from kernel address space to
  // user space, at the address of the user address `status` that was passed in for that purpose.
  result = copyout((void *)&exitstatus,status,sizeof(int));

  if (result) {
    return(result);
  }

  // the return value of waitpid is always the PID of the process
  // whose exit status goes in `status`, in OS161
  *retval = pid;
  return(0);
}

int sys_fork(struct trapframe* tf, pid_t *retval) {
  struct proc* proc_created = proc_create_runprogram("Forked process");
  struct addrspace* as;
  int result;

  // could not create child due to memory constraints
  if (proc_created == NULL) {
    return ENOMEM;
  }

  // the parent needs to return the retval of the child
  // synchronization is not required since the only one interested
  // in the child process is the parent and we are the parent
  *retval = getPID(proc_created);

  // allocate duplicate trapframe on kernel heap for child process
  struct trapframe* dupTrap = kmalloc(sizeof(struct trapframe));

  if (dupTrap == NULL) {
    return ENOMEM;
  }

  memcpy(dupTrap, tf, sizeof(struct trapframe));
  
  // allocate duplicate address space for child process
  as = as_create();

  if (as == NULL) {
    return ENOMEM;
  }

  // copy the address space of the parent process
  result = as_copy(curproc_getas(), &as);
  if (result) {
    return result;
  }
  
  // if successful, now set the new proc's address space
  // to be the copied parent's. We don't need any synchronization to do this
  // because only the parent knows about this child and it is not yet running
  proc_created->p_addrspace = as;

  // we are now ready to create the child process using thread_fork
  result = thread_fork("Forked thread", // name of thread
                        proc_created, // process to attach thread to
                        enter_forked_process, // entrypoint function
                        (void *)dupTrap, // pass trapframe as data
                        1 // pass in as number of args
                      );

  if (result) {
    kfree(dupTrap);
    return result;
  }

  // If there has been no error in thread_fork, then the child process is now running
  // and could run before this code is executed

  return 0;
}

int sys_execv(const char *program, char **args) {
  int result;

  char progname[128];

  /* Hope we fit. */
  KASSERT(strlen(program) < sizeof(progname));


  strcpy(progname, program);

  // Save new and old address space
  struct addrspace *oldas;
  struct addrspace *newas;
  struct vnode *v;

  // entrypoint and location of stack for new program we're running
  vaddr_t entrypoint, stackptr;

  /* Open the file. */
  result = vfs_open(progname, O_RDONLY, 0, &v);
  if (result) {
    return result;
  }

  // Create the new user address space memory
  newas = as_create();
  if (newas == NULL) {
    vfs_close(v);
    return ENOMEM;
  }

  /* Switch to it and activate it. Keeping the old one in case we need to rollback. */
  oldas = curproc_setas(newas);
  as_activate();

  /* Load the executable. */
  result = load_elf(v, &entrypoint);
  if (result) {
    /* p_addrspace will go away when curproc is destroyed */
    vfs_close(v);
    // Restore old address space since there was an error
    curproc_setas(oldas);
    return result;
  }

  /* Done with the file now. */
  vfs_close(v);

  /* Define the user stack in the address space */
  result = as_define_stack(newas, &stackptr);
  if (result) {
    // Restore old address space since there was an error
    curproc_setas(oldas);
    return result;
  }

  /////////////////////////////////////////////
  // Args
  /////////////////////////////////////////////

  // Count of the number of args copied in.
  size_t nargs = 0;

  // Offset into string buffer
  size_t strOffset = 0;

  // Current user pointer.
  userptr_t curarg;

  // Track start and end of string data
  char* strbuf = kmalloc(ARG_MAX);
  size_t strlen = 0;

  // Track start and end of pointers
  size_t* argv = kmalloc(sizeof(size_t) * ARG_MAX);

  // Args array is terminated by a NULL pointer.
  while(1) {
    // Copyin next pointer
    result = copyin((userptr_t)args[nargs], &curarg, sizeof(userptr_t));

    // If copyin of each pointer in args fails, return.
    if (result) {
      return result;
    }

    // The argument array is NULL terminated.
    if (curarg == NULL) {
      break;
    }

    // If this new arg puts us at the total, return
    // too many args.
    if (nargs == ARG_MAX) {
      return E2BIG;
    }

    // Copy in the string for the pointer
    result = copyinstr(curarg, strbuf + strOffset, ARG_MAX - strOffset, &strlen);
    if (result) {
      return result;
    }

    // We have successfully copied the string in, now do the bookkeeping
    argv[nargs] = strOffset; // set the offset for the pointer to its string
    strOffset += strlen; // decrease remaining character limit
    nargs++; // increment number of arguments
    args += sizeof(userptr_t); // increment argument being looked at
  }

  // figure out how much padding we need at the end to word align
  while(strOffset % 4) {
    strOffset++;
    strbuf[strOffset - 1] = 0;
  }

  // Adjust the argument pointers to new location on stack
  for (size_t i = 0; i < nargs; i++) {
    argv[nargs] += stackptr;
  }

  // Now put argv and strbuf on the user stack

  // Make room on the stack for the data
  // by subtracting number of characters
  stackptr -= strOffset;

  // Copy out string data onto user stack
  result = copyout(strbuf, (userptr_t)stackptr, strOffset);
  if (result) {
    return result;
  }

  // Make room on stack for the arguments by subtracting
  // number of arguments
  stackptr -= nargs * sizeof(userptr_t);

  // Copy out arguments onto user stack
  result = copyout(argv, (userptr_t)stackptr, nargs * sizeof(userptr_t));
  /////////////////////////////////////////////
  // Args
  /////////////////////////////////////////////

  // Now that everything has succeeded, we can free the old user address space memory
  as_destroy(oldas);

  /* Warp to user mode. */
  enter_new_process(0 /*argc*/, (userptr_t)(stackptr) /*userspace addr of argv*/,
        stackptr, entrypoint);
  
  /* enter_new_process does not return. */
  panic("enter_new_process returned\n");
  return EINVAL;
}
