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
  x = 0;
  rv = waitpid(getpid(), &x, 0);
  printf("Call 1:\n");
  printf("Return value: %d\n", rv);
  printf("Error code: %d\n", errno);
  

  printf("Call 2:\n");
  rv = waitpid(-4, &x, 0);
  printf("Return value: %d\n", rv);
  printf("Error code: %d\n", errno);

  int pid = fork();
  if (pid < 0) {
    printf("error forking:\n");
  }
  if (pid == 0) {
    printf("child fork:\n");
  }
  else {
    printf("parent fork waiting on PID: %d :\n", pid);
    printf("Call 3:\n");
    rv = waitpid(pid, ((void *)0x40000000), 0);
    printf("Return value: %d\n", rv);
    printf("Error code: %d\n", errno);
  }
  

  return(0);
}
