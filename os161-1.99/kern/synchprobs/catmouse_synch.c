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

// Keeps track of the number of cats that must go 
// to a bowl before it can switch to the other animal's turn.
volatile int catWaitingForTeam;

// Keeps track of the number of cats that must go
// to a bowl before it can switch to the other animal's turn.
volatile int mouseWaitingForTeam;

// Keeps track of the cats that came late to their
// turn and will have to wait until next time
volatile int catNextRoundWaiting;

// Keeps track of the mice that came late to their
// turn and will have to wait until next time.
volatile int mouseNextRoundWaiting;

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
  catWaitingForTeam = 0;
  mouseWaitingForTeam = 0;
  catNextRoundWaiting = 0;
  mouseNextRoundWaiting = 0;
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
  if (entry == -1) { // 1 for mice
    catWaitingForTeam++;
    cv_wait(catCV, generalLock);
    catWaitingForTeam--;
  }
  else if (mouseWaitingForTeam != 0) { // mouse wants in
    catNextRoundWaiting++;
    cv_wait(catCV, generalLock);
    catWaitingForTeam--;
  }

  if (entry == 0) { // 0 for unclaimed
    entry = 1; // -1 for cats
  }

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

  cats--;
  occupiedBowls[bowl] = 0;
  cv_signal(occupiedBowlsCV[bowl], generalLock);

  if (mouseWaitingForTeam != 0 && catWaitingForTeam == 0 && cats == 0) {
    entry = -1;
    catWaitingForTeam = catNextRoundWaiting;
    catNextRoundWaiting = 0;
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
  if (entry == 1) { // 1 for cats
    mouseWaitingForTeam++;
    cv_wait(mouseCV, generalLock);
    mouseWaitingForTeam--;
  }
  else if (catWaitingForTeam != 0) { // cat wants in
    mouseNextRoundWaiting++;
    cv_wait(mouseCV, generalLock);
    mouseWaitingForTeam--;
  }

  if (entry == 0) { // 0 for unclaimed
    entry = -1; // -1 for mice
  }

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

  mice--;
  occupiedBowls[bowl] = 0;
  cv_signal(occupiedBowlsCV[bowl], generalLock);

  if (catWaitingForTeam != 0 && mouseWaitingForTeam == 0 && mice == 0) {
    entry = 1;
    mouseWaitingForTeam = mouseNextRoundWaiting;
    mouseNextRoundWaiting = 0;
    cv_broadcast(catCV, generalLock);
  }

  lock_release(generalLock);
}
