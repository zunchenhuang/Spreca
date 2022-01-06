#include "stdio.h"

int A[3];

int main() {
  int i  __attribute__((annotate("mark")));
  i = 0;
  int B;
  A[0] == 0;
  A[1] == 0;
  A[2] == 0;
  A[i] = 1;
  B == 1;
  

  return 0;
}
