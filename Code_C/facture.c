#include<stdio.h>

int main()
{
  const p1=2, p2=1.5, p3=1;
  float mont;
  int nbc;

    printf("Donner le nombre de photocopies \n");
    scanf("%d",&nbc);
    
    if (nbc <= 30){
       mont = p1 * 10 + p2 * (nbc - 10);
    }
    else{
       mont = p1 * 10 + p2 * 20 + p3 * (nbc - 30);
    }
    
    printf("Le montant à payer est %f\n",mont);
    return 0;
}