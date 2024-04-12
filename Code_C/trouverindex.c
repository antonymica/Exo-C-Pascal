#include<stdio.h>
const int TAILLE_MAX = 10;
int iTab[TAILLE_MAX] = {3,6,0,8,9,0,5,6,0,8};

/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*                                */
/* Trouver les index des éléments */
/*   nuls d'un tableau d'entiers  */
/*                                */
/**********************************/
void main()
{ 
  int* iPointdeb = NULL;
  int* iPointfin = NULL;
  int* iCmp = NULL;

iPointdeb = &iTab[0];
iPointfin = &iTab[TAILLE_MAX-1];

for(iCmp=iPointdeb;iCmp<=iPointfin;iCmp++)
    if(*iCmp==0) printf("%d\n",iCmp-iPointdeb);
    printf("\n");
 return 0;   
}