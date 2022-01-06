#include <stdio.h>

int main(void)
{
	// declare variables 
	int a = 0;
	float b;
	char c;
    a = a + 1;
	printf("Address of a: %p\n", &a);
	printf("Address of b: %p\n", &b);
	printf("Address of c: %p\n", &c);

	return 0;
}
