/*
 * Copyright (c) 2000, 2001, 2002, 2003, 2004, 2005, 2008, 2009
 *  The President and Fellows of Harvard College.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE UNIVERSITY AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE UNIVERSITY OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#include <types.h>
#include <kern/errno.h>
#include <lib.h>
#include <spl.h>
#include <spinlock.h>
#include <proc.h>
#include <current.h>
#include <mips/tlb.h>
#include <addrspace.h>
#include <vm.h>
#include <syscall.h>
#include <math.h>

static struct spinlock stealmem_lock = SPINLOCK_INITIALIZER;

// Points to the first allocatable page
size_t freepaddr;

#define SMARTVM_STACKPAGES 12

void vm_boostrap(void) {
  coremap = kmalloc(sizeof(struct coremap*));

  if (coremap == NULL) {
    panic("could not create coremap");
  }

  coremap->cm_lock = lock_create("coremapLock");
  if (coremap->cm_lock == NULL) {
    panic("could not create coremapLock");
  }

  paddr_t startpaddr;
  paddr_t endpaddr;

  // destroys startpaddr and endpaddr, stealmem is now useless
  ram_getsize(&startpaddr, &endpaddr);

  // Get the total number of physical frames available in the system, record as length of coremap
  coremap->cm_len = (endpaddr - startpaddr) / PAGE_SIZE;

  // We would normally kmalloc coremap to put it on kernel heap, but
  // since kmalloc is in the weird stage between not working after ram_getsizing
  // and not working until we have coremap setup, we need to do math, getting the kernel
  // memory required for coremap and putting it there.
  coremap->cm_entries = (struct cme*)PADDR_TO_KVADDR(startpaddr);

  // Record the total size of the coremaps needed, in bytes
  size_t totalCoremapSize = coremap->cm_len * sizeof(struct cme);

  // The number of coremap entries that must be made unassignable, seeing as they would reference coremaps
  size_t metaCoremaps = ceil((double)totalCoremapSize / (double)PAGE_SIZE);

  // Advance free space past the space allocated for all the coremap entries
  size_t freepaddr = startpaddr + totalCoremapSize;

  // Round up to the nearest page size, want it page-aligned.
  freepaddr = SFS_ROUNDUP(freepaddr, PAGE_SIZE);

  // The coremap contained enough entries for covering all of startpaddr to endpaddr. But
  // the first section of that memory must hold the coremaps. Therefore all coremaps that would
  // describe space that is occupied by the coremaps must be unassignable.

  // Setup each coremap entry.
  for (int i = 0; i < totalFrameEntries; i++) {

    if (i < metaCoremaps) {
      coremap->cm_entries[i].status = CM_UNASSIGNABLE;
    }

    else {
      coremap->cm_entries[i]->addrspace = NULL;
      coremap->cm_entries[i]->vaddr = PADDR_TO_KVADDR(freepaddr + PAGE_SIZE * i);
      coremap->cm_entries[i]->paddr = freepaddr + PAGE_SIZE * i;
      coremap->cm_entries[i]->status = CM_FREE;
    }
  }

  coremap->cm_initialized = 1;
}

// Return npages contiguous pages of memory
static paddr_t getppages(unsigned long npages) {
  size_t curNumPages = 0;

  // If the coremap has already been setup, use smartvm
  if (coremap->cm_initialized) {
    lock_acquire(coremap->cm_lock);

    // Find npages contiguous frames to use
    for (int i = 0; i < coremap->cm_len; i++) {
      if (coremap->cm_entries[i]->status == CM_FREE) {
        if (++curNumPages == npages) {
          while(curNumPages) {
            coremap->cm_entries[i + 1 - curNumPages]->status = CM_INUSE;
            curNumPages--;
          }
          return coremap->cm_entries[i + 1 - npages]->paddr;
        }
      }
      else {
        curNumpages = 0;
      }
    }

    lock_release(coremap->cm_lock);
  }

  // Otherwise use the ol' stealmem
  else {
    spinlock_acquire(&stealmem_lock);
    paddr_t paddr = ram_stealmem(npages);
    spinlock_release(&stealmem_lock);

    return paddr;
  }


  return ENOMEM;
}

// Setup new address space segment tables.
struct addrspace* as_create(void) {
  struct addrspace *as = kmalloc(sizeof(struct addrspace));
  if (as==NULL) {
    return NULL;
  }

  as->textSegTable = kmalloc(sizeof(struct pagetable));
  if (as->textSegTable == NULL) {
    return NULL;
  }
  as->textSegTable->pt_len = 0;
  as->textSegTable->pt_vbase = 0;
  as->textSegTable->pt_entries = NULL;

  as->dataSegTable = kmalloc(sizeof(struct pagetable));
  if (as->dataSegTable == NULL) {
    return NULL;
  }
  as->dataSegTable->pt_len = 0;
  as->dataSegTable->pt_vbase = 0;
  as->dataSegTable->pt_entries = NULL;


  as->stackSegTable = kmalloc(sizeof(struct pagetable));
  if (as->stackSegTable == NULL) {
    return NULL;
  }
  as->stackSegTable->pt_len = 0;
  as->stackSegTable->pt_vbase = 0;
  as->stackSegTable->pt_entries = NULL;

  as->as_loaded = 0;

  return as;
}

// Be free! But no seriously, all that memory better become available again.
// Now we need to free all of the three page table structures, and set each of the coremaps
// once again available to use.
void as_destroy(struct addrspace *as) {
  // Big job here. Start with the tables, use the PFNs in the PTEs to get the index into the 
  panic("TODO");
}

void
as_activate(void)
{
  int i, spl;
  struct addrspace *as;

  as = curproc_getas();
#ifdef UW
        /* Kernel threads don't have an address spaces to activate */
#endif
  if (as == NULL) {
    return;
  }

  /* Disable interrupts on this CPU while frobbing the TLB. */
  spl = splhigh();

  for (i=0; i<NUM_TLB; i++) {
    tlb_write(TLBHI_INVALID(i), TLBLO_INVALID(), i);
  }

  splx(spl);
}

void
as_deactivate(void)
{
  /* nothing */
}


// Setup the code and data regions with proper lengths and virtual base addresses
int as_define_region(struct addrspace *as, vaddr_t vaddr, size_t sz, int readable, int writeable, int executable) {
  size_t npages;

  /* Align the region. First, the base... */
  sz += vaddr & ~(vaddr_t)PAGE_FRAME;
  vaddr &= PAGE_FRAME;

  /* ...and now the length. */
  sz = (sz + PAGE_SIZE - 1) & PAGE_FRAME;

  npages = sz / PAGE_SIZE;

  /* We don't use these - all pages are read-write */
  (void)readable;
  (void)writeable;
  (void)executable;

  if (as->textSegTable->pt_vbase == 0) {
    as->textSegTable->pt_vbase = vaddr;
    as->textSegTable->pt_len = npages;
    return 0;
  }

  if (as->dataSegTable->pt_vbase == 0) {
    as->dataSegTable->pt_vbase = vaddr;
    as->dataSegTable->pt_len = npages;
    return 0;
  }

  /*
   * Support for more than two regions is not available.
   */
  kprintf("dumbvm: Warning: too many regions\n");
  return EUNIMP;
}

static
void
as_zero_region(paddr_t paddr, unsigned npages)
{
  bzero((void *)PADDR_TO_KVADDR(paddr), npages * PAGE_SIZE);
}

// Get the physical pages needed to accommodate the about-to-be-loaded-in segments from the ELF
int as_prepare_load(struct addrspace *as) {
  KASSERT(as->textSegTable->pt_entries == NULL);
  KASSERT(as->dataSegTable->pt_entries == NULL);
  KASSERT(as->stackSegTable->pt_entries == NULL);

  // Allocate the needed page table entries for the text segment.
  as->textSegTable->pt_entries = kmalloc(sizeof(struct pte) * as->textSegTable->pt_len);
  if (as->textSegTable->pt_entries == NULL) {
    return ENOMEM;
  }

  // Find the physical frames for these PTEs from the coremap
  for (int i = 0; i < as->textSegTable->pt_len; i++) {
    as->textSegTable->pt_entries[i]->pt_pfn = getppages(1);

    if (as->textSegTable->pt_entries[i]->pt_pfn == 0) {
      return ENOMEM;
    }

    as_zero_region(as->textSegTable->pt_entries[i]->pt_pfn, 1);

  }

  as->dataSegTable->pt_entries = kmalloc(sizeof(struct pte) * as->dataSegTable->pt_len);
  if (as->dataSegTable->pt_entries == NULL) {
    return ENOMEM;
  }

  // Find the physical frames for these PTEs from the coremap
  for (int i = 0; i < as->dataSegTable->pt_len; i++) {
    as->dataSegTable->pt_entries[i]->pt_pfn = getppages(1);

    if (as->dataSegTable->pt_entries[i]->pt_pfn == 0) {
      return ENOMEM;
    }

    as_zero_region(as->dataSegTable->pt_entries[i]->pt_pfn, 1);
  }

  // Setup the stack, since was not done in as_define_region
  as->stackSegTable->pt_len = SMARTVM_STACKPAGES;
  as->stackSegTable->pt_vbase = MIPS_KSEG0 - SMARTVM_STACKPAGES * PAGE_SIZE;
  as->stackSegTable->pt_entries = kmalloc(sizeof(struct pte) * as->stackSegTable->pt_len);

  if (as->stackSegTable->pt_entries == NULL) {
    return ENOMEM;
  }

  for (int i = 0; i < as->stackSegTable->pt_len; i++) {
    as->stackSegTable->pt_entries[i]->pt_pfn = getppages(1);

    if (as->stackSegTable->pt_entries[i]->pt_pfn == 0) {
      return ENOMEM;
    }

    as_zero_region(as->stackSegTable->pt_entries[i]->pt_pfn, 1);
  }

  return 0;
}

int
as_complete_load(struct addrspace *as)
{
  as->as_loaded = 1;
  return 0;
}

int
as_define_stack(struct addrspace *as, vaddr_t *stackptr)
{
  KASSERT(as->stackSegTable->pt_vbase != 0);

  *stackptr = USERSTACK;
  return 0;
}

int as_copy(struct addrspace *old, struct addrspace **ret) {
  panic("TODO");
}