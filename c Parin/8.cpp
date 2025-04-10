#include <stdio.h>
 main() 
 {
    int num,i;
    int ec=0;
    int oc=0;
    for (i=1;i<=10;i++) 
	{
    printf("Enter number %d:",i);
    scanf("%d",&num);
	if (num%2==0) 
	{
    ec++;
    } 
	else 
	{
    oc++;
    }
    }
    printf("\nTotal Even numbers: %d\n",ec);
    printf("Total Odd numbers: %d\n",oc);
}

