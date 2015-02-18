#include <types.h>
#include <proc.h>
#include <kern/wait.h>

#define PROCINLINE
#include <proctable.h>
/*
 * Each index of the global proctable represents a PID that can be used to lookup a desired process.
 * 
 */

// Call once during system startup to allocate data structures.
void proctable_bootstrap(void) {

  // initial process limit to conserve memory
  pidLimit = 16;
  procTable = procarray_create();

  if (procTable == NULL) {
    panic("could not create proctable.");
  }
  
  procarray_setsize(procTable, pidLimit);


  procTableLock = lock_create("proctableLock");

  procCount = 0;

  if (procTableLock == NULL) {
    panic("could not create proctableLock");
  }

  for (int i = MIN_PID; i < pidLimit; i++) {
    procarray_set(procTable, i, NULL);
  }
}

// Add process to table
int proctable_add_process(struct proc *proc_created, struct proc *proc_parent) {
  KASSERT(procTableLock != NULL);
  KASSERT(proc_created != NULL);
  
  // Grow the proctable as more processes come in
  // -1 because the 0 pid is left empty
  if (procCount == pidLimit - 1) {
    if (pidLimit < MAX_PID) {
      pidLimit = pidLimit * 2;
      procarray_setsize(procTable, pidLimit);
    }
    else {
      return -1;
    }
  }

  for (int i = MIN_PID; i < pidLimit; i++) {
    if (procarray_get(procTable, i) == NULL) {
      setPID(proc_created, i);
      procarray_set(procTable, i, proc_created);
      break;
    }
  }

  // Check to see if a PID was available
  if (getPID(proc_created) == PROC_NO_PID) {
    return -1;
  }

  procCount++;
  DEBUG(DB_EXEC, "procCount: %d", procCount);
  
  DEBUG(DB_EXEC, "Found pid %d\n", proc_created->p_pid);

  if (proc_parent == NULL) {
    setPPID(proc_created, PROC_NO_PID);
  }
  else {
    setPPID(proc_created, getPID(proc_parent));
  }

  setState(proc_created, PROC_RUNNING);

  DEBUG(DB_EXEC, "Finished adding to proctable\n");

  return 0;
}

// Switch a process from running to exited
void proctable_exit_process(struct proc *proc_exited, int exitcode) {
  DEBUG(DB_EXEC, "Exiting PID: %d from proctable\n", getPID(proc_exited));

  KASSERT(proc_exited != NULL);
  KASSERT(proc_exited->p_pid > 0);

  setState(proc_exited, PROC_EXITED);

  // encode the exit code as per the docs.
  setExitcode(proc_exited, _MKWAIT_EXIT(exitcode));

  // If proc_exited has living children, they should now have a NULL parent
  // If proc_exited has dead children, they should now be destroyed

  int exitedPID = getPID(proc_exited);

  for (int i = MIN_PID; i < pidLimit; i++) {
    struct proc* cur = procarray_get(procTable, i);
    if (cur != NULL && getPPID(cur) == exitedPID) {
      // Check state of children
      int state = getState(cur);
      
      // A running child has its parent set to NULL
      if (state == PROC_RUNNING) {
        setPPID(cur, PROC_NO_PID);
      }

      // An exited child can now be destroyed
      else if (state == PROC_EXITED) {
        proctable_remove_process(cur);
      }
    }
  }

  // If proc_exited has no parent, it can be removed
  if (getPPID(proc_exited) == PROC_NO_PID) {
    proctable_remove_process(proc_exited);
  }

  // Otherwise if proc_exited has a parent, proc_exited must wake its potentially waiting parent
  else {
    cv_signal(proc_exited->wait_cv, procTableLock);
  }

  DEBUG(DB_EXEC, "Finished exiting PID: %d from proctable\n", exitedPID);
}

// Remove a process from the process table
void proctable_remove_process(struct proc *proc_removed) {
  DEBUG(DB_EXEC, "Removing PID: %d from proctable\n", getPID(proc_removed));

  KASSERT(proc_removed != NULL);

  int pid = getPID(proc_removed);
  procarray_set(procTable, pid, NULL);
  procCount--;

  /* if this is the last user process in the system, proc_destroy()
     will wake up the kernel menu thread */
  proc_destroy(proc_removed);

  DEBUG(DB_EXEC, "Finished removing PID: %d from proctable\n", pid);
}

// Return a process from the process table
struct proc* proctable_get_process(pid_t pid) {
  if (pid < MIN_PID || pid > MAX_PID) {
    return NULL;
  }

  return procarray_get(procTable, pid);
}
