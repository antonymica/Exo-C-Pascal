#include<stdio.h>
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/* Affichage du plus grand entier */
/*        et du plus petit        */
/*            entier              */
/**********************************/
int main()
{   int pg,pp,saisi;
    printf("\t+GRAND et +PETIT\n");
    printf("Pour terminer saisir 0\n");
    printf("Entier: ");
    scanf("%d",&saisi);
    pp=pg=saisi;

    while(saisi)
    {
        if (pg<saisi) pg=saisi;
        else if (pp>saisi) pp=saisi;
        printf("Entier: ");
        scanf("%d",&saisi);
    }

    printf("Le plus grand est %d et le plus petit est %d",pg,pp);
    return 0;
}