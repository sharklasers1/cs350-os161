/*
 * pidcheck - simple test of getpid
 *
 *  relies only on getpid and _exit
 *
 *  current proc prints its pid, exits.
 *
 */

#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <err.h>
#include <sys/types.h>
#include <errno.h>

int
main(int argc, char *argv[])
{
  (void)argc;
  (void)argv;

  printf("Current PID: %d\n", getpid());
  
  return(0);
}
