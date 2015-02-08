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

  /* this implementation of sys__exit does not do anything with the exit code */
  /* this needs to be fixed to get exit() and waitpid() working properly */

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

  // Have process exit
  lock_acquire(procTableLock);
    proctable_exit_process(p, exitcode);
  lock_release(procTableLock);

  thread_exit();
  /* thread_exit() does not return, so we should never get here */
  panic("return from thread_exit in sys_exit\n");
}


/* stub handler for getpid() system call                */
int
sys_getpid(pid_t *retval)
{
  struct proc *p = curproc;
  /* for now, this is just a stub that always returns a PID of 1 */
  /* you need to fix this to make it work properly */
  *retval = getPID(p);
  return(0);
}

/* stub handler for waitpid() system call                */

int
sys_waitpid(pid_t pid, // pid that you want to wait for
	    userptr_t status, // status address you want the exitcode returned in
	    int options, // number of options
	    pid_t *retval) // return value for waitpid, if success should be pid of process waitee.
{
  /* for now, just pretend the result, exitstatus are each 0 */
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
    // TODO figure out how to see if valid memory reference
    else if (status == NULL) {
      result = EFAULT;
    }

    if (result != 0) {
      lock_release(procTableLock);
      return(result);
    }
    
    // Otherwise, if waitpid call was valid, check to see if child has exited

    // If child is still running, have parent wait for child to exit
    while (getState(child) == PROC_RUNNING) {
      cv_wait(child->wait_cv, procTableLock);
    }

    // We are now awoken, or the child had already exited. Either way
    // er can remove the child from the process table and return his exit code.
    exitstatus = getExitcode(child);
    proctable_remove_process(child);

  lock_release(procTableLock);

  // if copyout succeeds, it returns 0, result keeps track of the success of copyout
  result = copyout((void *)&exitstatus,status,sizeof(int)); // copy the existatus of the process from kernel address space to
  // user space, at the address of the user address `status` that was passed in for that purpose.

  if (result) {
    return(result); // if copyout failed, return error
  }
  *retval = pid; // the return value of waitpid is always the PID of the process whose exit status goes in `status`, in OS161
  return(0);
}

