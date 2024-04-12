#include<stdio.h>
const int VRAI = 1;
const int FAUX = 0;
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*                                */
/*    Affichage contenu pointer   */
/*                                */
/**********************************/
int main()
{ int iEntier;
  int* iPointer = NULL;
  
printf("\t POINTEUR\n\n");

  printf("Entrer l\'entier: ");
  scanf("%d",&iEntier);

  iPointer = &iEntier;

  printf("Valeur de iEntier avant: %d\n",iEntier);
  (*iPointer)+=2;

  printf("Valeur de iEntier après : %d\n",iEntier);

 return 0;   
}