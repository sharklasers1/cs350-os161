#include <types.h>
#include <lib.h>
#include <synchprobs.h>
#include <synch.h>

/* 
 * This simple default synchronization mechanism allows only creature at a time to
 * eat.   The globalCatMouseSem is used as a a lock.   We use a semaphore
 * rather than a lock so that this code will work even before locks are implemented.
 */

/* 
 * Replace this default synchronization mechanism with your own (better) mechanism
 * needed for your solution.   Your mechanism may use any of the available synchronzation
 * primitives, e.g., semaphores, locks, condition variables.   You are also free to 
 * declare other global variables if your solution requires them.
 */

// ========================================
// Locks
// ========================================

// Controls entry of species eating
static struct lock *speciesEntryLock;

// Controls entry of individual animal eating
static struct lock *animalEntryLock;

// Ensures synchronization of cat data
static struct lock *catLock;

// Ensures Synchronization of mouse data
static struct lock *mouseLock;

// ========================================
// Condition Variables
// ========================================

// Handles occupation of bowls
static struct cv *occupiedBowlsCV;

// ========================================
// Global Variables
// ========================================

// Keeps track of number of cats
volatile int cats;

// Keeps track of number of mice
volatile int mice;

// Keeps track of which bowls are occupied
volatile int* occupiedBowls;

/* 
 * The CatMouse simulation will call this function once before any cat or
 * mouse tries to each.
 *
 * You can use it to initialize synchronization and other variables.
 * 
 * parameters: the number of bowls
 */
void
catmouse_sync_init(int bowls)
{
  speciesEntryLock = lock_create("SpeciesEntryLock");
  if (speciesEntryLock == NULL) {
    panic("could not create global SpeciesEntryLock synchronization lock");
  }

  animalEntryLock = lock_create("AnimalEntryLock");
  if (animalEntryLock == NULL) {
    panic("could not create global AnimalEntryLock synchronization lock");
  }

  catLock = lock_create("CatLock");
  if (catLock == NULL) {
    panic("could not create global CatLock synchronization lock");
  }

  mouseLock = lock_create("MouseLock");
  if (mouseLock == NULL) {
    panic("could not create global MouseLock synchronization lock");
  }

  occupiedBowlsCV = kmalloc(sizeof(struct cv) * bowls);
  if (occupiedBowlsCV == NULL) {
    panic("could not allocate space for bowls CV");
  }

  occupiedBowls = kmalloc(sizeof(int) * bowls);
  if (occupiedBowls == NULL) {
    panic("could not allocate space for bowls int");
  }

  for(int i = 0; i < bowls; i++) {
    occupiedBowlsCV[i] = cv_create("OccupiedBowlCV");
    occupiedBowls[i] = 0;

    if (occupiedBowlsCV[i] == NULL) {
      panic("could not create global bowl CV");
    }
  }
 
  cats = 0;
  mice = 0;

  return;
}

/* 
 * The CatMouse simulation will call this function once after all cat
 * and mouse simulations are finished.
 *
 * You can use it to clean up any synchronization and other variables.
 *
 * parameters: the number of bowls
 */
void
catmouse_sync_cleanup(int bowls)
{
  KASSERT(speciesEntryLock != NULL);
  lock_destroy(speciesEntryLock);

  KASSERT(animalEntryLock != NULL);
  lock_destroy(animalEntryLock);

  KASSERT(speciesEntryLock != NULL);
  lock_destroy(catLock);

  KASSERT(speciesEntryLock != NULL);
  lock_destroy(mouseLock);

  KASSERT(occupiedBowlsCV != NULL);
  for (int i = 0; i < bowls; i++) {
    KASSERT(occupiedBowlsCV[i] != NULL);
    cv_destroy(occupiedBowlsCV[i]);
  }

  kfree(occupiedBowls);
  kfree(occupiedBowlsCV);
}


/*
 * The CatMouse simulation will call this function each time a cat wants
 * to eat, before it eats.
 * This function should cause the calling thread (a cat simulation thread)
 * to block until it is OK for a cat to eat at the specified bowl.
 *
 * parameter: the number of the bowl at which the cat is trying to eat
 *             legal bowl numbers are 1..NumBowls
 *
 * return value: none
 */

void
cat_before_eating(unsigned int bowl) 
{
  // Decrement bowl for zero indexing
  bowl = bowl - 1;

  KASSERT(animalEntryLock != NULL);
  KASSERT(catLock != NULL);
  KASSERT(occupiedBowlsCV != NULL);
  KASSERT(occupiedBowlsCV[bowl] != NULL);

  lock_acquire(animalEntryLock);
  lock_acquire(catLock);

  // If no cats are in, try and allow cats in
  if (cats == 0) {
    lock_acquire(speciesEntryLock);
  }
  // Check if desired bowl is free
  else if (occupiedBowls[bowl] == 1) {
    cv_wait(occupiedBowlsCV[bowl], catLock);

    // If while waiting, all the cats leave, you then need to re-acquire the species lock
    if (lock_do_i_hold(speciesEntryLock) == 0) {
      lock_acquire(speciesEntryLock);
    }
  }

  // Mark bowl as now occupied by cat
  occupiedBowls[bowl] = 1;
  // Increment the number of cats eating
  cats++;

  lock_release(catLock);
  lock_release(animalEntryLock);
}

/*
 * The CatMouse simulation will call this function each time a cat finishes
 * eating.
 *
 * You can use this function to wake up other creatures that may have been
 * waiting to eat until this cat finished.
 *
 * parameter: the number of the bowl at which the cat is finishing eating.
 *             legal bowl numbers are 1..NumBowls
 *
 * return value: none
 */

void
cat_after_eating(unsigned int bowl) 
{
  // Decrement bowl for zero indexing
  bowl = bowl - 1;

  KASSERT(catLock != NULL);
  KASSERT(occupiedBowlsCV != NULL);
  KASSERT(occupiedBowlsCV[bowl] != NULL);
  KASSERT(speciesEntryLock != NULL);

  lock_acquire(catLock);
  
  cats--;

  // Should only signal a bowl that is occupied
  KASSERT(occupiedBowls[bowl] == 1)
  occupiedBowls[bowl] = 0;
  cv_signal(occupiedBowlsCV[bowl], catLock);

  if (cats == 0) {
    lock_release(speciesEntryLock);
  }

  lock_release(catLock);
}

/*
 * The CatMouse simulation will call this function each time a mouse wants
 * to eat, before it eats.
 * This function should cause the calling thread (a mouse simulation thread)
 * to block until it is OK for a mouse to eat at the specified bowl.
 *
 * parameter: the number of the bowl at which the mouse is trying to eat
 *             legal bowl numbers are 1..NumBowls
 *
 * return value: none
 */

void
mouse_before_eating(unsigned int bowl) 
{
  // Decrement bowl for zero indexing
  bowl = bowl - 1;

  KASSERT(animalEntryLock != NULL);
  KASSERT(mouseLock != NULL);
  KASSERT(occupiedBowlsCV != NULL);
  KASSERT(occupiedBowlsCV[bowl] != NULL);

  lock_acquire(animalEntryLock);
  lock_acquire(mouseLock);

  // If no mice are in, try and allow mice in
  if (mice == 0) {
    lock_acquire(speciesEntryLock);
  }
  // Check if desired bowl is free
  else if (occupiedBowls[bowl] == 1) {
    cv_wait(occupiedBowlsCV[bowl], miceLock);

    // If while waiting, all the mice leave, you then need to re-acquire the species lock
    if (lock_do_i_hold(speciesEntryLock) == 0) {
      lock_acquire(speciesEntryLock);
    }
  }

  // Mark bowl as now occupied by mouse
  occupiedBowls[bowl] = 1;
  // Increment the number of mice eating
  mouse++;

  lock_release(mouseLock);
  lock_release(animalEntryLock);
}

/*
 * The CatMouse simulation will call this function each time a mouse finishes
 * eating.
 *
 * You can use this function to wake up other creatures that may have been
 * waiting to eat until this mouse finished.
 *
 * parameter: the number of the bowl at which the mouse is finishing eating.
 *             legal bowl numbers are 1..NumBowls
 *
 * return value: none
 */

void
mouse_after_eating(unsigned int bowl) 
{
  // Decrement bowl for zero indexing
  bowl = bowl - 1;

  KASSERT(mouseLock != NULL);
  KASSERT(occupiedBowlsCV != NULL);
  KASSERT(occupiedBowlsCV[bowl] != NULL);
  KASSERT(speciesEntryLock != NULL);

  lock_acquire(mouseLock);
  
  mice--;

  // Should only signal a bowl that is occupied
  KASSERT(occupiedBowls[bowl] == 1)
  occupiedBowls[bowl] = 0;
  cv_signal(occupiedBowlsCV[bowl], mouseLock);

  if (mice == 0) {
    lock_release(speciesEntryLock);
  }

  lock_release(mouseLock);
}
