#include<stdio.h>
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*Affichage du produit de 2 entier*/
/*                ET              */
/*    Échange de deux entier      */
/**********************************/
int main()
{   
   int a,b;
  
    printf("\t Calcul de produit ! \n\n");
    
    printf("Premier nombre: ");
    scanf("%d",&a);
    printf("Deuxième nombre: ");
    scanf("%d",&b);
    
    printf("%d x %d = %d",a,b,a*b);
    
    printf("\n\n");
    
    int x;
    
    printf("\t Permutation\n");
    printf("Avant on avait: a=%d et b=%d\n",a,b);
    x=a; a=b; b=x;
    printf("Maintenant on a: a=%d et b=%d",a,b);
    
    return 0;
    
}