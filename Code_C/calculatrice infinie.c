#include<stdio.h>
const int VRAI = 1;
const int FAUX = 0;
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*                                */
/*         CALCULATRICES.         */
/*                                */
/**********************************/
int main()
{ int entier1,entier2,resultat;
  char operateur;
  int autorisation;
printf("\t   CALCULATRICE\n\n");
  while(1){
    printf("Saisir votre calcul: ");
    scanf("%d %c %d",&entier1,&operateur,&entier2);
    autorisation=VRAI;
    /*Test sur l'opérateur*/
    switch(operateur)
    {
        case '+': resultat=entier1+entier2; break;
        case '-': resultat=entier1-entier2; break;
        case '*': resultat=entier1*entier2; break;
        case '/': 
              if (entier2==0)
               {
                 printf("Division par zéro\n\n");
                 autorisation=FAUX;
               }
              else
               {
                 resultat=entier1/entier2;
               }
            break;
        case '%': resultat=entier1%entier2; break;
        default: {
                printf("L'opération %c est incorrect\n",operateur);
                autorisation=FAUX;
                 }
    }/*Fin du switch*/
    if (autorisation) printf("Résultat: %d\n\n",resultat);
  }/*Fin de while*/
 return 0;   
}