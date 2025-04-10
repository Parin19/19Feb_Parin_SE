#include 
<stdio.h>
struct Student 
{
char name[50];
int roll;
float marks;
};
main() 
{
    struct Student s[3];  
    int i;
    for (i=0;i<3;i++) 
	{
    printf("Enter details for student %d:\n",i+1);
    printf("Name: ");
    scanf("%s",s[i].name);
    printf("Roll Number: ");
    scanf("%d",&s[i].roll);
    printf("Marks: ");
    scanf("%f",&s[i].marks);
    printf("\n");
    }
    printf("Student Details:\n");
    for (i=0;i<3;i++) 
	{
    printf("Student %d:\n",i+1);
    printf("Name: %s\n",s[i].name);
    printf("Roll Number: %d\n",s[i].roll);
    printf("Marks: %.2f\n\n",s[i].marks);
    }
}

