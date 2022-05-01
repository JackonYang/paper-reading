#include <emmintrin.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

char a = 1;

void memory_bound() {
  register unsigned i = 0;
  register char b;

  for (i = 0; i < (1u << 24); i++) {
    // evict cacheline containing a
    _mm_clflush(&a);
    b = a;
  }
}

void cpu_bound() {
  register unsigned i = 0;
  for (i = 0; i < (1u << 31); i++) {
    __asm__("nop");
  }
}

int main() {
  memory_bound();
  cpu_bound();
  return 0;
}
