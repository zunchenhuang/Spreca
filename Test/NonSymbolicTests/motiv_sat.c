#include <stdio.h>

static int A[8], X;

int main() {
  A[0] = 1;
  A[1] = 2;
  A[1] = A[1] + 1;
  A[2] = A[1] + A[2];
  A[3] = A[0] + A[1] - A[2];
  int i = 4;
  while (i < 7) {
    A[i] = i;
    i = i + 1;
  }
  A[0]++;
  if (X > 0) {
    return A[0];
  }
  else {
    return A[1];
  }
}
