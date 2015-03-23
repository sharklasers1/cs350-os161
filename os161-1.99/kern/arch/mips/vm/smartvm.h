#ifndef _SMARTVM_H_
#define _SMARTVM_H_

#include <addrspace.h>

struct lock coremapLock;
struct cme* coremap;

// Core map entry
// The core map contains an entry for every physical frame in the system.

struct cme {
  int state;                    // State of the cte, it could be free, unavailable, in-use
  struct addrspace* as;         // The address space the cte is currently in-use with
  vaddr_t va;                   // The virtual address that the physical frame is mapped to
}