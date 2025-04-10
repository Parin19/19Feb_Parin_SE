#include <stdio.h>
int factorial(int n);
main() 
{
    int num,res;
    printf("Enter a number: ");
    scanf("%d", &num);
    result = factorial(num);
    printf("Factorial of %d is: %d\n",num,res);
}
int factorial(int n) 
{
    int fact = 1, i;
    for (i = 1; i <= n; i++)
	{
    fact = fact * i;
    }
    return fact;
}

