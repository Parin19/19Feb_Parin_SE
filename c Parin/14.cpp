#include <stdio.h>
main() 
{
    int arr[5];
    int i,j,temp;
    printf("Enter 5 numbers:\n");
    for (i=0;i<5;i++) 
	{
        printf("Number %d:",i+1);
        scanf("%d",&arr[i]);
    }
    for (i=0;i<5-1;i++) 
	{
        for (j=i+1;j<5;j++) 
		{
            if (arr[i]>arr[j]) 
			{
            temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
            }
        }
    }
    printf("\nArray in Ascending Order:\n");
    for (i=0;i<5;i++) 
	{
        printf("%d",arr[i]);
    }
    printf("\n\nArray in Descending Order:\n");
    for (i=4;i>=0;i--) 
	{
    printf("%d",arr[i]);
    }
    printf("\n");
}

