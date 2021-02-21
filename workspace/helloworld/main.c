#include <stdio.h>

int func(void)
{
	printf("This func is not called\n");
	return 0;
}

int main(void)
{
	int c;
	c = 1 + 2;
	printf("1 + 2 = %d\n", c);
	return 0;
}
