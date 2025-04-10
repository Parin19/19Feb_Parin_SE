/*• LAB EXERCISE:
o Write a C program that accepts two integers from the user and performs
arithmetic, relational, and logical operations on them. Display the results.*/
#include<stdio.h>
main()
{
	float x,y;
	printf("Enter A No.");
	scanf("%f",&x);
	printf("\nEnter A No.");
	scanf("%f",&y);
	printf("\nSum:%.0f",x+y);
	printf("\nSub:%.0f",x-y);
	printf("\nMul:%.0f",x*y);
	printf("\nDiv:%f",x/y);
}
