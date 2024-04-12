#include<stdio.h>

const int NB_LIGNES = 5;

int iMat[NB_LIGNES][NB_LIGNES] = 
    {
    {0,1,2,3,4},
    {10,11,12,13,14},
    {20,21,22,23,24},
    {30,31,32,33,34},
    {40,41,42,43,44}
    };
    
 void affiche_matrice(int iTab[NB_LIGNES][NB_LIGNES])
    {
        int iLigne, iColonne;
        
        for (iLigne=0;iLigne<NB_LIGNES;iLigne++)
        {
            for (iColonne=0;iColonne<NB_LIGNES;iColonne++)
            {
                printf("%d ",iTab[iLigne][iColonne]);
                printf("\n");
            }
        }
    }
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*                                */
/*    Impression d'une matrice    */
/*      NB_LIGNES * NB_LIGNES     */
/*                                */
/**********************************/
void main()
{ 
  affiche_matrice(iMat);
 return 0;   
}