#ifndef _PROCTABLE_H_
#define _PROCTABLE_H_

#include <proc.h>
#include <synch.h>

// Consider changing to PID_MAX defined in LIMITS
#define MAX_PID 512

// Begins at 1 because in wait.h, PID 0 is defined in a special way for process groups.
#define MIN_PID 1

// Call once during system startup to allocate data structures.
void proctable_bootstrap(void);

// Add process to table, associate it with its parent
void proctable_add_process(struct proc *current, struct proc *parent);

#endif /* _PROCTABLE_H_ */


