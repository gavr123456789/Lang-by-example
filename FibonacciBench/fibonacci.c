// gcc -O3 c.c
#include <stdio.h>

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } 
  return fibonacci(n - 1) + fibonacci(n - 2);
}

int main(void) {
  printf("%i", fibonacci(40));
}