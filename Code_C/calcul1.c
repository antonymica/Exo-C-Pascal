#include<stdio.h>

int main()
{
  int a,b,sum,sub,prod;
  float div;
    printf("Enter the first number\n");
    scanf("%d",&a);
    printf("Enter the second number\n");
    scanf("%d",&b);
    
    sum = a + b;
    sub = a - b;
    prod = a * b;
    div = a / b;
    
    printf("Sum = %d\n",sum);
    printf("Substract = %d\n",sub);
    printf("Produit = %d\n",prod);
    printf("Division = %f\n",div);
    
  return 0;
}
