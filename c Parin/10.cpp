#include <stdio.h>
main() 
{
    int n,i=1,s=0;
    printf("Enter a positive number: ");
    scanf("%d", &n);
    while(i<=n) 
	{
    s=s+i;
    i++;
    }
    printf("Sum of natural numbers from 1 to %d is: %d\n",n,s);
}

