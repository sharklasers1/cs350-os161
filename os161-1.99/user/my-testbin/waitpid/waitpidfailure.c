/*
 * waitpidfailure - simple test to see if waitpid fails correctly
 *
 *  relies only on waitpid and _exit
 *
 *  current proc prints its pid, exits.
 *
 */

#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <err.h>
#include <errno.h>


int
main(int argc, char *argv[])
{
  (void)argc;
  (void)argv;

  int rv, x;
  rv = waitpid(getpid(), &x, 0);

  printf("Return value: %d\n", rv);
  printf("Error code: %d\n", errno);
  
  return(0);
}
