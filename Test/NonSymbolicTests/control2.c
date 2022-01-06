#include <stdio.h>

static int A[5], X;

int main() {
  // Store %retval ID : 4
  
  // Store A[0] ID : 5
  A[0] = 0;
  // Store A[0] ID : 6
  if (A[0] > 0) {
  // Store A[1] ID : 9
    A[1] = 1;
  // Store A[1] ID : 10
    A[3] = 3;  
  }
  else {
  // Store A[2] ID : 12
    A[2] = 2;
  // Store A[4] ID : 13
    A[4] = 4;
  }
  // Store A[0] ID : 15
  A[0] = 1;
  // Load X ID : 16
  X == 0;
  return 0;

}
