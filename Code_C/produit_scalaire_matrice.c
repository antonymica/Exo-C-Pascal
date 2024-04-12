#include<stdio.h>
#include<stdlib.h>

void remplir(double[][50],int,int);
void affiche(double[][50],int,int);
void multix(double[][50],int,int,double);

int main()
{    
    double tab[50][50],x;
    int nligne,ncol;
    
    printf("\tPRODUIT SCALAIRE MATRICE \n\n");
    
    printf("Taille de la ligne: ");
    scanf("%d",&nligne);
    printf("Taille de la colonne: ");
    scanf("%d",&ncol);
    
    remplir(tab,nligne,ncol);
    affiche(tab,nligne,ncol);
    
    printf("Entrer la valeur de x: ");
    scanf("%lf",&x);
    multix(tab,nligne,ncol,x);
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
void multix(double t[][50],int l,int c,double val)
{
    int i,j;
    for (i=0;i<l;i++)
    {
        for(j=0;j<c;j++)
        {
            t[i][j]*=val;
        }
    }
}

