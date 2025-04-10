#include <stdio.h>
int main() 
{
    int num, reverse = 0,d;
    printf("Enter a number: ");
    scanf("%d", &num);
    while (num != 0) 
	{
    d=num%10;            
    reverse = reverse *10+d;  
    num=num/10;              
    }
    printf("Reversed number is: %d\n", reverse);
}

