//=====================================================//
// Copyright (c) 2015, Dan Staples (https://disman.tl) //
//=====================================================//

#include <stdio.h>
#include <malloc.h>
#include <sched.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <sys/mman.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <stdlib.h>

#define STACK_SIZE	(1024 * 1024)
#define CLONE_FLAGS	CLONE_THREAD | CLONE_UNTRACED | CLONE_SIGHAND | CLONE_VM

#ifdef __i386__
#define CLONE_SYSCALL	0x78
#define EXIT_SYSCALL    0x01
#define SHELLCODE_FILE	"print32.bin"
#elif defined(__x86_64__)
#define CLONE_SYSCALL	0x38
#define EXIT_SYSCALL    0x3c
#define SHELLCODE_FILE	"print64.bin"
#endif

unsigned char *shellcode = NULL;
size_t shellcode_len;

static int _print(void* foo) {
  unsigned char *mmapped = mmap(NULL, shellcode_len, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_ANONYMOUS|MAP_PRIVATE, 0, 0);
  if (!mmapped) return 1;
  memcpy(mmapped, shellcode, shellcode_len);
  (*(void(*)())mmapped)();
  return 0;
}

static void *
_create_stack(void)
{
  // MAP_GROWSDOWN never seems to work for me...
  void *stack = mmap(NULL, STACK_SIZE, PROT_READ|PROT_WRITE, MAP_ANONYMOUS|MAP_PRIVATE/*|MAP_GROWSDOWN*/,-1,0);
  if (!stack) {
    printf("malloc error\n");
    exit(1);
  }
  return stack + STACK_SIZE;
//   return stack;
}

static void
_print_usage(void)
{
  printf("Usage: print [ pfcs ] [ <shellcode file> ]\n" \
	 "Executes provided shellcode in a variety of manners, depending on the first option given. NOTE: For all options other than `p`, the shellcode must end with a syscall to `exit`.\n" \
         "Options:\n" \
	 "\tp	Execute shellcode from parent thread\n" \
	 "\tf	Run fork() and execute shellcode from forked process\n" \
	 "\tc	Run glibc clone() and execute shellcode from child thread\n" \
	 "\ts	Use inline assembly to perform clone syscall and run shellcode from child thread\n");
}

int main(int argc, char *argv[]) {
  void *stack_top = NULL;
  int pid;
  
  FILE *f = fopen(SHELLCODE_FILE, "rb");
  fseek(f, 0, SEEK_END);
  shellcode_len = ftell(f);
  fseek(f, 0, SEEK_SET);
  shellcode = malloc(shellcode_len);
  size_t r = fread(shellcode, 1, shellcode_len, f);
  fclose(f);
  
  if (argc != 2) {
    _print_usage();
    return 1;
  }
  
  switch (argv[1][0]) {
    case 'p':
      _print(NULL);
      break;
    case 'c':;
      stack_top = _create_stack();
      pid = clone(_print, stack_top, CLONE_FLAGS, NULL);
      if (pid == -1) {
	printf("clone() error: %d (%s)\n", errno, strerror(errno));
	return 1;
      }
      break;
    case 'f':
      if (fork() == 0)
	_print(NULL);
      break;
    case 's':
      printf("current thread id: %d\n", getpid());
      stack_top = _create_stack();
#ifdef __i386__
      __asm__ __volatile__(
	"mov	%1,%%ecx\n\t"
	"mov	%2,%%ebx\n\t"
	"xor	%%eax,%%eax\n\t"
	"movb	$0x78,%%al\n\t"
	"xor	%%edx,%%edx\n\t"
	"xor	%%edi,%%edi\n\t"
	"xor	%%esi,%%esi\n\t"
	"int	$0x80\n\t"
	:"=a"(pid)
	:"r"(stack_top), "r"(CLONE_FLAGS));
#elif defined(__x86_64__)
      __asm__ __volatile__(
	"mov	%1,%%rsi\n\t"
	"xor	%%rdi,%%rdi\n\t"
	"mov	%2,%%edi\n\t"
	"xor	%%rax,%%rax\n\t"
	"movb	$0x38,%%al\n\t"
	"xor	%%rdx,%%rdx\n\t"
	"xor	%%r10,%%r10\n\t"
	"xor	%%r8,%%r8\n\t"
	"syscall\n\t"
	:"=a"(pid)
        :"r"(stack_top), "r"(CLONE_FLAGS));
#endif
      // for some reason, syscall(CLONE_SYSCALL,...) always segfaults
//       pid = syscall(CLONE_SYSCALL, CLONE_FLAGS, stack_top, NULL, NULL, NULL);
      if (pid == -1) {
	printf("clone syscall error: %d (%s)\n", errno, strerror(errno));
	return 1;
      } else if (pid == 0) {
	_print(NULL);
	syscall(EXIT_SYSCALL, 0);
      } else {
	printf("new thread id: %d\n", pid);
      }
      break;
    default:
      _print_usage();
      return 1;
  }
  sleep(3);
  printf("done\n");
  return 0;
}
