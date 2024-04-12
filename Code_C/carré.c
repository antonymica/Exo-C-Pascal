#include<stdio.h>

int main()
{
  float x,x2;
    printf("Donner un réel\n");
    scanf("%f",&x);
    x2 = x * x;
    printf("Le carré de ce nombre est %f\n",x2);
    return 0;
}