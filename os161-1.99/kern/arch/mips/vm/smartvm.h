#ifndef _SMARTVM_H_
#define _SMARTVM_H_

#include <addrspace.h>
#include <synch.h>

// Core map entry
// The core map contains an entry for every physical frame in the system.

#define CM_FREE 0
#define CM_INUSE 1
#define CM_UNASSIGNABLE 2

struct coremap {
  struct cme* cm_entries;
  size_t cm_len;
  size_t cm_initialized;
  struct lock* cm_lock;
};

void cme_free(paddr_t paddr);

struct cme {
  int status;                   // Status of the cte, it could be free, unassignable, in-use. 0 = free, 1 = in-use, 2 = unassignable
  paddr_t paddr;                // The physical address the coremap entry represents
  vaddr_t vaddr;                // The virtual address that the physical frame is mapped to
  size_t frameCount;            // Number of contiguous CMEs associated with this first frame

  // Using the above two fields, we can get the PTE that is bound to it, if any
};

struct lock coremapLock;
struct coremap* coremap;

#endif /* _SMARTVM_H_ */
