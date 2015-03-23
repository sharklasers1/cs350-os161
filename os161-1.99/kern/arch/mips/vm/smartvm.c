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

 size_t freepaddr;

void vm_boostrap(void) {

  coremapLock = lock_create("coremapLock");
  if (coremapLock == NULL) {
    panic("could not create coremapLock");
  }

  paddr_t firstpaddr;
  paddr_t lastpaddr;

  // destroys firstpaddr and lastpaddr, stealmem is now useless
  ram_getsize(&firstpaddr, &lastpaddr);

  // Get the total number of physical frames available in the system
  size_t totalFrameEntries = (lastpaddr - firstpaddr) / PAGE_SIZE;

  // We would normally kmalloc coremap to put it on kernel heap, but
  // since kmalloc is in the weird stage between not working after ram_getsizing
  // and not working until we have coremap setup, we need to do math, getting the kernel
  // memory required for coremap and putting it there.
  coremap = (struct cme*)PADDR_TO_KVADDR(firstpaddr);

  // Advance free space past the space allocated for the coremap
  freepaddr = firstpaddr + totalFrameEntries * sizeof(struct cme);

}