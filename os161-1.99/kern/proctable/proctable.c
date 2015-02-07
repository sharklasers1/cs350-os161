#include <types.h>
#include <proctable.h>
#include <proc.h>
/*
 * Each index of the global proctable represents a PID that can be used to lookup a desired process.
 * 
 */

// procTable to hold all processes
static struct proc **procTable;

// lock to shield critical sections, such as when a parent calls wait as child calls exit
static struct lock *procTableLock;

// Call once during system startup to allocate data structures.
void proctable_bootstrap(void) {
  procTable = kmalloc(sizeof(struct proc) * MAX_PID);

  if (procTable == NULL) {
    panic("could not create proctable.");
  }

  procTableLock = lock_create("proctableLock");

  if (procTableLock == NULL) {
    panic("could not create proctableLock");
  }

  for (int i = MIN_PID; i < MAX_PID; i++) {
    procTable[i] = NULL;
  }
}

// Add process to table
void proctable_add_process(struct proc *current, struct proc *parent) {
  KASSERT(procTableLock != NULL);
  KASSERT(current != NULL);

  DEBUG(DB_EXEC, "Adding to proctable");
  
  for (int i = MIN_PID; i < MAX_PID; i++) {
    if (procTable[i] == NULL) {
      current->p_pid = i;
      break;
    }
  }
  
  DEBUG(DB_EXEC, "Found pid %d", current->p_pid);

  if (parent == NULL) {
    current->p_ppid = PROC_NO_PARENT;
  }
  else {
    current->p_ppid = parent->p_pid;
  }

  DEBUG(DB_EXEC, "Finished with proctable");

  return;
}
