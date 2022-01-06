#include <stdio.h>

static int A[4], X;

int main() {

  int temp = 1;
  
  if (temp > 0) {
    A[0] = 1;
    A[2] = 3;  
  }
  else {
    A[1] = 2;
    A[3] = 4;
  }
  A[0] += 1;
  X = 0;
  return 0;

}
