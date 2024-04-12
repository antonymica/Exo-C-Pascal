#include<stdio.h>
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*  Teste de parité sur un entier */
/*                                */
/*           ############         */
/**********************************/
int main()
{   int val;

     printf("\t  PAIRE OU IMPAIRE\n\n");
     
     printf("Valeur: ");
     scanf("%d",&val);
     
     if((val%2)==0)
        printf("Paire");
     else
        printf("Impaire");
        
    return 0;
    
}