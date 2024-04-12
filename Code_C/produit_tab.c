#include<stdio.h>
#include<stdlib.h>
void creer(double*,int);
void affiche(double*,int);
double produit(double*,int);

int main()
{
    double *tab, resultat;
    int taille;
    printf("Taille du vecteur: ");
    scanf("%d",&taille);
    tab=(double*)malloc(sizeof(double)*taille);
    creer(&tab,taille);
    affiche(&tab,taille);
    resultat = produit(&tab,taille);
    printf("Produit = %.3lf\n",resultat);
    return 0;
}

void creer(double *t,int l)
{
    int i;
    for(i=0;i<l;i++)
    {
        printf("Entrer l'élément [%d] : ",i);
        scanf("%lf",t+i);
    }
}

void affiche(double *t,int l)
{
    int i;
    for(i=0;i<l;i++)
    {
        printf("L'element [%d] = %.3lf\n",i,*(t+i));
    }
}

double produit(double *t,int l)
{
    int i;
    double res=1;
    for(i=0;i<l;i++)
        res *= *(t+i);
    return res;
}
