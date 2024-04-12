#include <stdio.h>
#include <conio.h>
void main()
{
    int mat[2][2],det;
    /* saisie */
    printf("ENTRER SUCCESSIVEMENT LES VALEURS DEMANDEES: \n");
    printf("mat[0][0] = ");
    scanf("%d",&mat[0][0]);
    printf("mat[1][0] = ");
    scanf("%d",&mat[1][0]);
    printf("mat[0][1] = ");
    scanf("%d",&mat[0][1]);
    printf("mat[1][1] = ");
    scanf("%d",&mat[1][1]);

/* calcul */
    det = mat[0][0]*mat[1][1]-mat[1][0]*mat[0][1];

/* affichage */
    printf("DETERMINANT = %d\n",det);
printf("POUR CONTINUER FRAPPER  UNE TOUCHE: ");
getch();
    return 0;
}
