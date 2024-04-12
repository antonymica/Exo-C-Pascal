#include<stdio.h>
#include<stdlib.h>

void remplir(double[][50],int,int);
void affiche(double[][50],int,int);
void addmatrice(double[][50],double[][50],double[][50],int,int);

int main()
{    
    double tab1[50][50],tab2[50][50],tab[50][50];
    int nligne,ncol;
    
    printf("\tADDITION DE DEUX MATRICES\n\tMEME TAILLE\n");
    
    printf("Taille de la ligne: ");
    scanf("%d",&nligne);
    printf("Taille de la colonne: ");
    scanf("%d",&ncol);
    
    remplir(tab1,nligne,ncol);
    affiche(tab1,nligne,ncol);
    remplir(tab2,nligne,ncol);
    affiche(tab2,nligne,ncol);
    
    addmatrice(tab1,tab2,tab,nligne,ncol);
    printf("\n\nAprès calcul : \n");
    affiche(tab,nligne,ncol);

    return 0;
}
void remplir(double t[][50],int l,int c)
{
    int i,j;
    for (i=0;i<l;i++)
    {
        for(j=0;j<c;j++)
        {
            printf("Tab[%d][%d]=",i,j);
            scanf("%lf",&(t[i][j]));
        }
    }
}
void affiche(double t[][50],int l,int c)
{
    int i,j;
    for (i=0;i<l;i++)
    {   printf("(");
        for(j=0;j<c;j++)
        {
            printf(" %.2lf ",t[i][j]);
        }
        printf(")\n");
    }
}
void addmatrice(double t1[][50],double t2[][50],double t[][50],int l,int c)
{
    int i,j;
    for (i=0;i<l;i++)
    {
        for(j=0;j<c;j++)
        {
            t[i][j]=t1[i][j]+t2[i][j];
        }
    }
}

    