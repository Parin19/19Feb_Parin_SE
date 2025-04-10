#include <stdio.h>
main()
{
    int x,y,z;
    int huge;
    printf("Enter first number: ");
    scanf("%d",&x);
    printf("Enter second number: ");
    scanf("%d",&y);
    printf("Enter third number: ");
    scanf("%d",&z);
    huge=(x > y) ? (x > z ? x : z) : (y > z ? y : z);
    printf("Biggest number is: %d\n",huge);
}

