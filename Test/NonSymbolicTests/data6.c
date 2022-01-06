#include <stdio.h>

static int A1, A2, A3, A4, A5, A6, A7, X;

int main() {
  // Store retval ID : 5
  int temp;
  // Store A1 ID : 7
  A1 = 0;
  // Load A1 ID : 8
  // Store temp ID : 9
  temp = A1;
  // Load temp ID : 10
  if (temp > 0) {
  // Store A2 ID : 13
    A2 = 3;
  } else {
  // Store A2 ID : 15
    A2 = 5;
  }
  // Store A3 ID : 17
  A3 = 4;
  // Store A5 ID : 18
  A5 = 2;
  // Store A3 ID : 19
  A6 = 3;
  // Load A3 ID : 20
  // Load A5 ID : 21
  // Load A6 ID : 22
  // Store A7 : 25
  A7 = A3 + A5 / A6;
  // Store A1 : 26
  A1 = 1;
  // Load X : 27
  X == 0;
  
  return 0;

}
