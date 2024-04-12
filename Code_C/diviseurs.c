#include<stdio.h>
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*    Affichage diviseurs d'un    */
/*             entier.            */
/*                                */
/**********************************/
int main()
{ int div=1,saisi,m;
    printf("\tDIVISEURS d'un ENTIER\n\n");
    printf("Enter le nombre: ");
    scanf("%d",&saisi);
    m=saisi/2;
    printf("Les diviseurs de %d sont:\n",saisi);
    for(div;div<=saisi;div++)
    {
        if(saisi%div==0)
        printf("\t\t%d\n",div);
    }
  return 0;   
}