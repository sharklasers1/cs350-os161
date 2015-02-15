#include <types.h>
#include <proctable.h>
#include <proc.h>
#include <kern/wait.h>
/*
 * Each index of the global proctable represents a PID that can be used to lookup a desired process.
 * 
 */

// Call once during system startup to allocate data structures.
void proctable_bootstrap(void) {
  procTable = kmalloc(sizeof(struct proc) * MAX_PID);

  if (procTable == NULL) {
    panic("could not create proctable.");
  }

  procTableLock = lock_create("proctableLock");

  procCount = 0;

  if (procTableLock == NULL) {
    panic("could not create proctableLock");
  }

  for (int i = MIN_PID; i <= MAX_PID; i++) {
    procTable[i] = NULL;
  }
}

// Add process to table
void proctable_add_process(struct proc *proc_created, struct proc *proc_parent) {
  KASSERT(procTableLock != NULL);
  KASSERT(proc_created != NULL);
  
  DEBUG(DB_EXEC, "Adding to proctable\n");
  
  for (int i = MIN_PID; i < MAX_PID; i++) {
    if (procTable[i] == NULL) {
      setPID(proc_created, i);
      procTable[i] = proc_created;
      break;
    }
  }

  procCount++;
  
  DEBUG(DB_EXEC, "Found pid %d\n", proc_created->p_pid);

  if (proc_parent == NULL) {
    setPPID(proc_created, PROC_NO_PID);
  }
  else {
    setPPID(proc_created, getPPID(proc_parent));
  }

  setState(proc_created, PROC_RUNNING);

  DEBUG(DB_EXEC, "Finished adding to proctable\n");

  return;
}

// Switch a process from running to exited
void proctable_exit_process(struct proc *proc_exited, int exitcode) {
  DEBUG(DB_EXEC, "Exiting from proctable\n");

  KASSERT(proc_exited != NULL);
  KASSERT(proc_exited->p_pid > 0);

  setState(proc_exited, PROC_EXITED);

  // encode the exit code as per the docs.
  setExitcode(proc_exited, _MKWAIT_EXIT(exitcode));

  // If proc_exited has living children, they should now have a NULL parent
  // If proc_exited has dead children, they should now be destroyed

  int exitedPID = getPID(proc_exited);

  for (int i = MIN_PID; i < MAX_PID; i++) {
    if (procTable[i] != NULL && getPPID(procTable[i]) == exitedPID) {
      // Check state of children
      int state = getState(procTable[i]);
      
      // A running child has its parent set to NULL
      if (state == PROC_RUNNING) {
        setPPID(procTable[i], PROC_NO_PID);
      }

      // An exited child can now be destroyed
      else if (state == PROC_EXITED) {
        proctable_remove_process(procTable[i]);
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

  DEBUG(DB_EXEC, "Finished exiting from proctable\n");
}

// Remove a process from the process table
void proctable_remove_process(struct proc *proc_removed) {
  DEBUG(DB_EXEC, "Removing from proctable\n");

  KASSERT(proc_removed != NULL);
  KASSERT(getPPID(proc_removed) == PROC_NO_PID);

  int pid = getPID(proc_removed);
  procTable[pid] = NULL;
  procCount--;

  /* if this is the last user process in the system, proc_destroy()
     will wake up the kernel menu thread */
  proc_destroy(proc_removed);

  DEBUG(DB_EXEC, "Finished removing from proctable\n");
}

// Return a process from the process table
struct proc* proctable_get_process(pid_t pid) {
  if (pid < MIN_PID || pid > MAX_PID) {
    return NULL;
  }

  return procTable[pid];
}
