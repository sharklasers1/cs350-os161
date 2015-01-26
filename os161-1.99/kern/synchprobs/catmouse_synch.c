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

static struct lock *generalLock;

// ========================================
// Condition Variables
// ========================================

// Handles occupation of bowls
static struct cv **occupiedBowlsCV;
static struct cv *mouseCV;
static struct cv *catCV;

// ========================================
// Global Variables
// ========================================

// Keeps track of number of cats currently fetching food from bowls.
volatile int cats;

// Keeps track of number of mice currently fetching food from bowls.
volatile int mice;

// Keeps track of the number of cats/mice that MUST
// go when it becomes the cats/mice's turn.
volatile int catOnTurn;
volatile int mouseOnTurn;

// Keeps track of the cats/mice that MUST go not on their current turn,
// but on the cats/mice's NEXT turn.
volatile int catOnNextTurn;
volatile int mouseOnNextTurn;

// The current animal that has access to the bowls
// 1 = cats, 0 = neither, -1 = mice
volatile int entry;

// Keeps track of which bowls are occupied
volatile int *occupiedBowls;

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
  generalLock = lock_create("MouseLock");
  if (generalLock == NULL) {
    panic("could not create global generalLock synchronization lock");
  }

  occupiedBowlsCV = kmalloc(sizeof(struct cv) * bowls);
  if (occupiedBowlsCV == NULL) {
    panic("could not allocate space for bowls CV");
  }

  occupiedBowls = kmalloc(sizeof(int) * bowls);
  if (occupiedBowls == NULL) {
    panic("could not allocate space for bowls int");
  }

  mouseCV = cv_create("MouseCV");
  if (mouseCV == NULL) {
    panic("could not create mouse CV");
  }

  catCV = cv_create("catCV");
  if (catCV == NULL) {
    panic("could not create mouse CV");
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
  catOnTurn = 0;
  mouseOnTurn = 0;
  catOnNextTurn = 0;
  mouseOnNextTurn = 0;
  entry = 0;

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
  KASSERT(generalLock != NULL);
  lock_destroy(generalLock);

  KASSERT(mouseCV != NULL);
  cv_destroy(mouseCV);

  KASSERT(catCV != NULL);
  cv_destroy(catCV);

  KASSERT(occupiedBowlsCV != NULL);
  for (int i = 0; i < bowls; i++) {
    KASSERT(occupiedBowlsCV[i] != NULL);
    cv_destroy(occupiedBowlsCV[i]);
  }

  kfree((void *)occupiedBowls);
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

  KASSERT(catCV != NULL);
  KASSERT(generalLock != NULL);
  KASSERT(occupiedBowlsCV != NULL);
  KASSERT(occupiedBowlsCV[bowl] != NULL);

  lock_acquire(generalLock);
  if (entry == -1) {
    // If it is the mice' turn and a cat wants in,
    // add the cat to the list of cats going on their turn.
    catOnTurn++;
    cv_wait(catCV, generalLock);
    catOnTurn--;
  }
  else if (mouseOnTurn != 0) {
    // If it is currently your turn and the mice want in, add any
    // additional cats to the list of cats going next time.
    catOnNextTurn++;
    cv_wait(catCV, generalLock);
    // When the cat is awoken, it is now their next turn and they have
    // been moved from catOnNextTurn to catOnTurn as one of the current cats to go
    catOnTurn--;
  }

  if (entry == 0) {
    entry = 1;
  }

  // The cat is in the process of getting the bowl
  cats++;
  while (occupiedBowls[bowl] == 1) {
    cv_wait(occupiedBowlsCV[bowl], generalLock);
  }
  occupiedBowls[bowl] = 1;

  lock_release(generalLock);

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

  KASSERT(occupiedBowlsCV != NULL);
  KASSERT(occupiedBowlsCV[bowl] != NULL);
  KASSERT(mouseCV != NULL);

  lock_acquire(generalLock);

  // The cat has now concluded his business at the bowl.
  cats--;
  occupiedBowls[bowl] = 0;
  cv_signal(occupiedBowlsCV[bowl], generalLock);

  // If there are no cats eating, and no more cats are scheduled
  // to eat this turn, and there are mice waiting, switch to the mice's turn.
  if (mouseOnTurn != 0 && catOnTurn == 0 && cats == 0) {
    entry = -1;
    catOnTurn = catOnNextTurn;
    catOnNextTurn = 0;
    cv_broadcast(mouseCV, generalLock);
  }

  lock_release(generalLock);
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

  KASSERT(generalLock != NULL);
  KASSERT(mouseCV != NULL);
  KASSERT(occupiedBowlsCV != NULL);
  KASSERT(occupiedBowlsCV[bowl] != NULL);

  lock_acquire(generalLock);
  if (entry == 1) {
    // If it is the cats' turn and a mouse wants in,
    // add the mouse to the list of mice going on their turn.
    mouseOnTurn++;
    cv_wait(mouseCV, generalLock);
    mouseOnTurn--;
  }
  else if (catOnTurn != 0) {
    // If it is currently your turn and the cats want in, add any
    // additional mice to the list of mice going next time.
    mouseOnNextTurn++;
    cv_wait(mouseCV, generalLock);
    // When the mouse is awoken, it is now their next turn and they have
    // been moved from mouseOnNextTurn to mouseOnTurn as one of the current mice to go
    mouseOnTurn--;
  }

  if (entry == 0) {
    entry = -1;
  }

  // The mouse is in the process of getting the bowl
  mice++;
  while (occupiedBowls[bowl] == 1) {
    cv_wait(occupiedBowlsCV[bowl], generalLock);
  }
  occupiedBowls[bowl] = 1;

  lock_release(generalLock);

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

  KASSERT(occupiedBowlsCV != NULL);
  KASSERT(occupiedBowlsCV[bowl] != NULL);
  KASSERT(mouseCV != NULL);

  lock_acquire(generalLock);

  // The cat has now concluded his business at the bowl.
  mice--;
  occupiedBowls[bowl] = 0;
  cv_signal(occupiedBowlsCV[bowl], generalLock);

  // If there are no mice eating, and no more mice are scheduled
  // to eat this turn, and there are cats waiting, switch to the cats' turn.
  if (catOnTurn != 0 && mouseOnTurn == 0 && mice == 0) {
    entry = 1;
    mouseOnTurn = mouseOnNextTurn;
    mouseOnNextTurn = 0;
    cv_broadcast(catCV, generalLock);
  }

  lock_release(generalLock);
}
