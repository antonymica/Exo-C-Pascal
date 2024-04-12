#include<stdio.h>
#include<stdlib.h>

void remplir(int[][50],int,int);
void affiche(int[][50],int,int);
void zerodiago(int[][50],int,int);

int main()
{    
    int tab[50][50],nligne,ncol;
    
    printf("\tMETTRE A ZERO LA DIAGONALE \n\n");
    
    printf("Taille de la ligne: ");
    scanf("%d",&nligne);
    printf("Taille de la colonne: ");
    scanf("%d",&ncol);
    
    remplir(tab,nligne,ncol);
    printf("\n\nAvant transformation : \n");
    affiche(tab,nligne,ncol);
    zerodiago(tab,nligne,ncol);
    printf("\n\nAprès transformation : \n");
    affiche(tab,nligne,ncol);

    return 0;
}
void remplir(int t[][50],int l,int c)
{
    int i,j;
    for (i=0;i<l;i++)
    {
        for(j=0;j<c;j++)
        {
            printf("Tab[%d][%d]=",i,j);
            scanf("%d",&(t[i][j]));
        }
    }
}
void affiche(int t[][50],int l,int c)
{
    int i,j;
    for (i=0;i<l;i++)
    {
        for(j=0;j<c;j++)
        {
            printf("%d\t",t[i][j]);
        }
        printf("\n");
    }
}
void zerodiago(int t[][50],int l,int c)
{
    int i,j;
    for (i=0;i<l;i++)
    {
        for(j=0;j<c;j++)
        {
            if (i==j) t[i][j]=0;
        }
    }
}

