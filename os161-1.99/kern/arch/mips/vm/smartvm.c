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
#include <vm.h>
#include <spinlock.h>
#include <proc.h>
#include <current.h>
#include <mips/tlb.h>
#include <addrspace.h>
#include <syscall.h>
#include <synch.h>
#include <sfs.h>
#include "smartvm.h"

static struct spinlock stealmem_lock = SPINLOCK_INITIALIZER;

// Points to the first allocatable page
size_t freepaddr;

#define SMARTVM_STACKPAGES 12

void cme_free(vaddr_t vaddr) {
  for (size_t i = 0; i < coremap->cm_len; i++) {
    if (coremap->cm_entries[i].status != CM_UNASSIGNABLE && coremap->cm_entries[i].vaddr == vaddr) {

      // Free this and all contiguous coremaps as specified when put in use
      for (size_t j = i; j < i + coremap->cm_entries[i].frameCount; j++) {
        DEBUG(DB_EXEC, "Freeing coremap: %d\n", j);

        KASSERT(coremap->cm_entries[j].status == CM_INUSE);
        KASSERT(coremap->cm_entries[j].frameCount);

        coremap->cm_entries[j].status = CM_FREE;
        coremap->cm_entries[j].frameCount = 0;
      }
      return;
    }
  }

  panic("Trying to update a coremap entry that doesn't exist");
}

void vm_bootstrap(void) {
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
  // and not working until we have coremap setup (because of ram_getsize), we need to do math, getting the kernel
  // memory required for coremap and putting it there.
  coremap->cm_entries = (struct cme*)PADDR_TO_KVADDR(startpaddr);

  // Record the total size of the coremaps needed, in bytes
  size_t totalCoremapSize = coremap->cm_len * sizeof(struct cme);

  // The number of coremap entries that must be made unassignable, seeing as they would reference coremaps
  size_t metaCoremaps = SFS_ROUNDUP(totalCoremapSize, PAGE_SIZE) / PAGE_SIZE;

  // Advance free space past the space allocated for all the coremap entries
  size_t freepaddr = startpaddr + totalCoremapSize;

  // Round up to the nearest page size, want it page-aligned.
  freepaddr = SFS_ROUNDUP(freepaddr, PAGE_SIZE);

  // The coremap contained enough entries for covering all of startpaddr to endpaddr. But
  // the first section of that memory must hold the coremaps. Therefore all coremaps that would
  // describe space that is occupied by the coremaps must be unassignable.

  // Setup each coremap entry.
  for (size_t i = 0; i < coremap->cm_len; i++) {

    if (i < metaCoremaps) {
      coremap->cm_entries[i].status = CM_UNASSIGNABLE;
    }

    else {
      coremap->cm_entries[i].vaddr = PADDR_TO_KVADDR(freepaddr + PAGE_SIZE * i);
      coremap->cm_entries[i].paddr = freepaddr + PAGE_SIZE * i;
      coremap->cm_entries[i].status = CM_FREE;
      coremap->cm_entries[i].frameCount = 0;
    }
  }

  coremap->cm_initialized = 1;
}

// Return npages contiguous pages of memory
static paddr_t getppages(unsigned long npages) {
  size_t curNumPages = 0;

  // If the coremap has already been setup, use smartvm
  if (coremap != NULL && coremap->cm_initialized) {
    lock_acquire(coremap->cm_lock);

    // Find npages contiguous frames to use
    for (size_t i = 0; i < coremap->cm_len; i++) {
      if (coremap->cm_entries[i].status == CM_FREE) {
        if (++curNumPages == npages) {
          while(curNumPages) {
            curNumPages--;
            DEBUG(DB_EXEC, "Allocating coremap: %d\n", i);
            coremap->cm_entries[i - curNumPages].status = CM_INUSE;

            // Keep track of the number of cmes this coremap is associated with for kfree
            if (curNumPages == npages - 1) {
              coremap->cm_entries[i - curNumPages].frameCount = npages;
            }
            else {
              coremap->cm_entries[i - curNumPages].frameCount = 1;
            }

          }
          lock_release(coremap->cm_lock);
          return coremap->cm_entries[i].paddr;
        }
      }
      else {
        curNumPages = 0;
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


  return 0;
}

// Allocate some kernel-space virtual pages
vaddr_t alloc_kpages(int npages) {
  DEBUG(DB_EXEC, "Allocating KERNEL coremap\n");
  paddr_t paddr;
  paddr = getppages(npages);

  if (paddr == 0) {
    return 0;
  }

  return PADDR_TO_KVADDR(paddr);
}

// Free some kernel-space virtual pages
void free_kpages(vaddr_t addr) {
  if (coremap != NULL && coremap->cm_initialized) {
    // Need to find the associated coremap and set it to FREE
    DEBUG(DB_EXEC, "Freeing KERNEL coremap\n");
    lock_acquire(coremap->cm_lock);
    cme_free(addr);
    lock_release(coremap->cm_lock);
  }
  else {
    kprintf("Freeing before coremap setup. Memory lost, like tears, in the rain.");
  }
}

// Should not be used, we are only doing single processor
void
vm_tlbshootdown_all(void)
{
  panic("dumbvm tried to do tlb shootdown?!\n");
}

void
vm_tlbshootdown(const struct tlbshootdown *ts)
{
  (void)ts;
  panic("dumbvm tried to do tlb shootdown?!\n");
}

// Handle TLB faults with our new smartvm
int vm_fault(int faulttype, vaddr_t faultAddress) {
  vaddr_t v_base;
  paddr_t paddr;
  int i;
  uint32_t ehi, elo;
  struct addrspace *as;
  int spl;
  int readOnly = 0;

  faultAddress &= PAGE_FRAME;

  DEBUG(DB_VM, "smartvm: fault: 0x%x\n", faultAddress);

  switch (faulttype) {
      case VM_FAULT_READONLY:
    kprintf("Attempted to write ROM, killing process.\n");
    sys__exit(1);
    panic("smartvm: got VM_FAULT_READONLY\n");
      case VM_FAULT_READ:
      case VM_FAULT_WRITE:
    break;
      default:
    return EINVAL;
  }

  if (curproc == NULL) {
    /*
     * No process. This is probably a kernel fault early
     * in boot. Return EFAULT so as to panic instead of
     * getting into an infinite faulting loop.
     */
    return EFAULT;
  }

  as = curproc_getas();
  if (as == NULL) {
    /*
     * No address space set up. This is probably also a
     * kernel fault early in boot.
     */
    return EFAULT;
  }

  /* Assert that the address space has been set up properly. */
  KASSERT(as->textSegTable != NULL);
  KASSERT(as->dataSegTable != NULL);
  KASSERT(as->stackSegTable != NULL);
  KASSERT(as->textSegTable->pt_vbase != 0);
  KASSERT(as->dataSegTable->pt_vbase != 0);
  KASSERT(as->stackSegTable->pt_vbase != 0);
  KASSERT(as->textSegTable->pt_len != 0);
  KASSERT(as->dataSegTable->pt_len != 0);
  KASSERT(as->stackSegTable->pt_len == SMARTVM_STACKPAGES);
  KASSERT(as->textSegTable->pt_entries != NULL);
  KASSERT(as->dataSegTable->pt_entries != NULL);
  KASSERT(as->stackSegTable->pt_entries != NULL);

  // Translation of code segment virtual address to physical address of code segment
  if (faultAddress >= as->textSegTable->pt_vbase && faultAddress < as->textSegTable->pt_vbase + PAGE_SIZE * as->textSegTable->pt_len) {
    // If it was in the code segment, it needs to be read only provided it has already been loaded.
    if (as->as_loaded) {
      readOnly = 1;
    }

    v_base = as->textSegTable->pt_vbase;
    for (size_t i = 0; i < as->textSegTable->pt_len; i++) {
      if (faultAddress < v_base + PAGE_SIZE) {
        // Once we've found the correct page table entry, the offset we need to combine with the PFN
        // is faultAddress - v_base
        paddr = as->textSegTable->pt_entries[i].pte_pfn + (faultAddress - v_base);
        break;
      }
      else {
        v_base += PAGE_SIZE;
      }
    }
  }

  // Translation of data segment virtual address to physical address of data segment
  else if (faultAddress >= as->dataSegTable->pt_vbase && faultAddress < as->dataSegTable->pt_vbase + PAGE_SIZE * as->dataSegTable->pt_len) {
    v_base = as->dataSegTable->pt_vbase;
    for (size_t i = 0; i < as->dataSegTable->pt_len; i++) {
      if (faultAddress < v_base + PAGE_SIZE) {
        // Once we've found the correct page table entry, the offset we need to combine with the PFN
        // is faultAddress - v_base
        paddr = as->dataSegTable->pt_entries[i].pte_pfn + (faultAddress - v_base);
        break;
      }
      else {
        v_base += PAGE_SIZE;
      }
    }
  }

  // Translation of stack segment virtual address to physical address of stack segment
  else if (faultAddress >= as->stackSegTable->pt_vbase && faultAddress < as->stackSegTable->pt_vbase + PAGE_SIZE * as->stackSegTable->pt_len) {
    v_base = as->stackSegTable->pt_vbase;
    for (size_t i = 0; i < as->stackSegTable->pt_len; i++) {
      if (faultAddress < v_base + PAGE_SIZE) {
        // Once we've found the correct page table entry, the offset we need to combine with the PFN
        // is faultAddress - v_base
        paddr = as->stackSegTable->pt_entries[i].pte_pfn + (faultAddress - v_base);
        break;
      }
      else {
        v_base += PAGE_SIZE;
      }
    }
  }

  else {
    // Otherwise the faultAddress is not in any of our segments, throw an error
    return EFAULT;
  }

  /* make sure it's page-aligned */
  KASSERT((paddr & PAGE_FRAME) == paddr);

  /* Disable interrupts on this CPU while frobbing the TLB. */
  spl = splhigh();

  for (i=0; i<NUM_TLB; i++) {
    tlb_read(&ehi, &elo, i);
    if (elo & TLBLO_VALID) {
      continue;
    }
    ehi = faultAddress;

    if (readOnly) {
      elo = paddr | TLBLO_VALID;
    }
    else {
      elo = paddr | TLBLO_DIRTY | TLBLO_VALID;
    }
    DEBUG(DB_VM, "smartvm: 0x%x -> 0x%x\n", faultAddress, paddr);
    tlb_write(ehi, elo, i);
    splx(spl);
    return 0;
  }

  kprintf("smartvm: Ran out of TLB entries - going to select one at random\n");
  ehi = faultAddress;

  if (readOnly) {
    elo = paddr | TLBLO_VALID;
  }
  else {
    elo = paddr | TLBLO_DIRTY | TLBLO_VALID;
  }
  DEBUG(DB_VM, "smartvm: 0x%x -> 0x%x\n", faultAddress, paddr);
  tlb_random(ehi, elo);

  splx(spl);
  return 0;
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
  paddr_t paddr;
  paddr_t vaddr;

  // Naiive version of finding the coremap entry, if have time change from linear scan.

  // First thing to do is mark the core map entries in each page table as FREE and
  // free the page table entries.
  lock_acquire(coremap->cm_lock);

  for (size_t i = 0; i < as->textSegTable->pt_len; i++) {
    paddr = as->textSegTable->pt_entries[i].pte_pfn;
    vaddr = PADDR_TO_KVADDR(paddr);
    cme_free(vaddr);
  }

  for (size_t i = 0; i < as->dataSegTable->pt_len; i++) {
    paddr = as->dataSegTable->pt_entries[i].pte_pfn;
    vaddr = PADDR_TO_KVADDR(paddr);
    cme_free(vaddr);
  }

  for (size_t i = 0; i < as->stackSegTable->pt_len; i++) {
    paddr = as->stackSegTable->pt_entries[i].pte_pfn;
    vaddr = PADDR_TO_KVADDR(paddr);
    cme_free(vaddr);
  }

  lock_release(coremap->cm_lock);

  // Then free the page tables entries
  kfree(as->textSegTable->pt_entries);
  kfree(as->dataSegTable->pt_entries);
  kfree(as->stackSegTable->pt_entries);

  // Then the page tables themselves
  kfree(as->textSegTable);
  kfree(as->dataSegTable);
  kfree(as->stackSegTable);

  // Then finally, destroy the address space.
  kfree(as);
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
  for (size_t i = 0; i < as->textSegTable->pt_len; i++) {
    as->textSegTable->pt_entries[i].pte_pfn = getppages(1);

    if (as->textSegTable->pt_entries[i].pte_pfn == 0) {
      return ENOMEM;
    }

    as_zero_region(as->textSegTable->pt_entries[i].pte_pfn, 1);

  }

  as->dataSegTable->pt_entries = kmalloc(sizeof(struct pte) * as->dataSegTable->pt_len);
  if (as->dataSegTable->pt_entries == NULL) {
    return ENOMEM;
  }

  // Find the physical frames for these PTEs from the coremap
  for (size_t i = 0; i < as->dataSegTable->pt_len; i++) {
    as->dataSegTable->pt_entries[i].pte_pfn = getppages(1);

    if (as->dataSegTable->pt_entries[i].pte_pfn == 0) {
      return ENOMEM;
    }

    as_zero_region(as->dataSegTable->pt_entries[i].pte_pfn, 1);
  }

  // Setup the stack, since was not done in as_define_region
  as->stackSegTable->pt_len = SMARTVM_STACKPAGES;
  as->stackSegTable->pt_vbase = MIPS_KSEG0 - SMARTVM_STACKPAGES * PAGE_SIZE;
  as->stackSegTable->pt_entries = kmalloc(sizeof(struct pte) * as->stackSegTable->pt_len);

  if (as->stackSegTable->pt_entries == NULL) {
    return ENOMEM;
  }

  for (size_t i = 0; i < as->stackSegTable->pt_len; i++) {
    as->stackSegTable->pt_entries[i].pte_pfn = getppages(1);

    if (as->stackSegTable->pt_entries[i].pte_pfn == 0) {
      return ENOMEM;
    }

    as_zero_region(as->stackSegTable->pt_entries[i].pte_pfn, 1);
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


// Copy an address space from one to another, specifically allocating new physical memory for the destination addrspace
int as_copy(struct addrspace *old, struct addrspace **ret) {
  struct addrspace *new;

  new = as_create();
  if (new == NULL) {
    return ENOMEM;
  }

  // Copy over respective page table lengths and virtual bases.
  new->textSegTable->pt_len = old->textSegTable->pt_len;
  new->textSegTable->pt_vbase = old->textSegTable->pt_vbase;
  new->dataSegTable->pt_len = old->dataSegTable->pt_len;
  new->dataSegTable->pt_vbase = old->dataSegTable->pt_vbase;
  new->stackSegTable->pt_len = old->stackSegTable->pt_len;
  new->stackSegTable->pt_vbase = old->stackSegTable->pt_vbase;

  new->as_loaded = old->as_loaded;

  /* (Mis)use as_prepare_load to allocate some physical memory. */
  if (as_prepare_load(new)) {
    as_destroy(new);
    return ENOMEM;
  }

  KASSERT(new->textSegTable->pt_entries != NULL);
  KASSERT(new->dataSegTable->pt_entries != NULL);
  KASSERT(new->stackSegTable->pt_entries != NULL);

  // Create new physical addresses for each of the page tables entries' frames
  for (size_t i = 0; i < new->textSegTable->pt_len; i++) {
    memmove((void *)PADDR_TO_KVADDR(new->textSegTable->pt_entries[i].pte_pfn),
    (const void *)PADDR_TO_KVADDR(old->textSegTable->pt_entries[i].pte_pfn), PAGE_SIZE);
  }

  for (size_t i = 0; i < new->dataSegTable->pt_len; i++) {
    memmove((void *)PADDR_TO_KVADDR(new->dataSegTable->pt_entries[i].pte_pfn),
    (const void *)PADDR_TO_KVADDR(old->dataSegTable->pt_entries[i].pte_pfn), PAGE_SIZE);
  }

  for (size_t i = 0; i < new->stackSegTable->pt_len; i++) {
    memmove((void *)PADDR_TO_KVADDR(new->stackSegTable->pt_entries[i].pte_pfn),
    (const void *)PADDR_TO_KVADDR(old->stackSegTable->pt_entries[i].pte_pfn), PAGE_SIZE);
  }

  *ret = new;
  return 0;
}
