#include <stdio.h>
main() 
{
    float cp,sp, profit, loss;
    printf("Enter Cost Price: ");
    scanf("%f", &cp);
    printf("Enter Selling Price: ");
    scanf("%f", &sp);
    if (sp>cp) 
	{
        profit = sp-cp;
        printf("You made a Profit of %.2f\n", profit);
    } 
	else if (cp>sp) 
	{
        loss = cp-sp;
        printf("You made a Loss of %.2f\n", loss);
    } 
	else 
	{
        printf("No Profit No Loss\n");
    }
}

