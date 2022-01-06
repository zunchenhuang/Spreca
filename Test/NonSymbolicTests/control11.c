#include <stdio.h>

static int A[7], X;

int main() {

  for(int i = 0; i < 7; i++) {
    if (i > 4)
        A[i] = i;
    else 
        A[i] = i+1;
    A[i]++;
  }
  A[0] = 0;
  X == 0;
  return 0;

}
