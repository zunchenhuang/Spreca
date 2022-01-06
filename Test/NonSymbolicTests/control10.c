#include <stdio.h>

static int A[7], X;

int main() {
  int temp;
  A[0] = 0;
  temp = A[0];
  
  if (temp > 0) {
    return A[0];
  }
  
  for(int i = 2; i < 7; i++) {
    if (i > 4)
        A[i] = i;
    else 
        A[i] = i+1;
    A[i]++;
  }
  A[0] += 1;
  X == 0;
  return 0;

}
