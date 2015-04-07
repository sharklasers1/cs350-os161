#include <unistd.h>
#include <sys/wait.h>
#include <stdio.h>
#include <stdlib.h>

#define N_STRING_SIZE 32

/* replace this string with the filename on your system. */
const char *prog = "my-testbin/fibonacci";


static int spawn_fib_call(int n) {
  char n_string[N_STRING_SIZE];
  char * args[3] = { (char *)"fibonacci", n_string, NULL };
  snprintf(n_string, N_STRING_SIZE, "%d", n);
  int result2;
  
  printf("Calling execv(\"%s\", [\"%s\", \"%s\", %p]);\n", prog, args[0], args[1], args[2]);
  
  pid_t pid = fork();
  switch (pid) {
    case -1:
      printf("FORK ERROR\n");
      _exit(-3);
    case 0:
      /* child */
      result2 = execv(prog, args);
      printf("EXECV ERROR %d\n", result2);
      _exit(-4);
    default:
      /* parent */
      break;
  }
  int exitcode;
  pid_t result = waitpid(pid, &exitcode,  0);
  if (result < 0) {
    printf("WAITPID ERROR\n");
    return -6;
  }
  exitcode = WEXITSTATUS(exitcode);
  return exitcode;
}

int
main(int argc, char **argv)
{
  if (argc != 2) {
    printf("Usage: %s n\nComputes the nth fibonacci number\n", argv[0]);
    for (int i = 0; i < argc; i++) {
      printf("argv[%d]: %s\n", i, argv[i]);
    }
    return -1;
  }
  
  int n = atoi(argv[1]);
  
  if (n < 0) {
    printf("n must be > 0\n");
    return -2;
  }
  
  if (n == 0 || n == 1) {
    printf("fib(%d) = 1\n", n);
    return 1;
  }
  
  int ret1 = spawn_fib_call(n-1);
  if (ret1 <= 0) {
    _exit(ret1);
  }
  
  int ret2 = spawn_fib_call(n-2);
  if (ret2 <= 0) {
    _exit(ret2);
  }
  
  printf("fib(%d) = %d\n", n, ret1 + ret2);
  _exit(ret1 + ret2);
}
