#include<stdio.h>
void creermat(int**,int,int);
void affichemat(int**,int,int);
void transpose(int**,int**,int,int);
void produitscal(int**,int,int,int);
   
int main()
{
    int **matA, **matB, nligne, ncol;
    int valeur;
    printf("Taille de la ligne de la matrice: ");
    scanf("%d",&nligne);
    printf("Taille du colonne de la matrice: ");
    scanf("%d",&ncol);
    
    matA = (int**)malloc(sizeof(int)*ncol);
    
    creermat(&matA,nligne,ncol);
    affichemat(&matA,nligne,ncol);
  
    matB = (int**)malloc(sizeof(int)*ncol);
  
    transpose(&matA,&matB,nligne,ncol);
    
    printf("\n");
    
    affichemat(&matB,ncol,nligne);
    printf("\n");
    printf("Entrer le entier: ");
    scanf("%d",&valeur);
    
    produitscal(&matB,ncol,nligne,valeur);
    
    affichemat(&matB,ncol,nligne);
    free(matA);
    free(matB);
    return 0;
}
void creermat(int **A,int l,int c)
{
    int i,j;
    for(i=0;i<l;i++)
        for(j=0;j<c;j++)
        {
            printf("Element [%d][%d] = ",i,j);
            scanf("%d",A[i]+j);
        }
}
void affichemat(int **A,int l,int c)
{
    int i,j;
    for(i=0;i<l;i++)
    {
        for(j=0;j<c;j++)
        {
            printf("%d ",*(A[i]+j));
        }
        printf("\n");
    }
}
void transpose(int **A,int **B,int l,int c)
{
    int i,j;
    for(i=0;i<l;i++)
        for(j=0;j<c;j++)
        {
            *(B[j]+i)=*(A[i]+j);
        }
}

void produitscal(int **B,int l,int c,int scal)
{
    int i,j;
    for(i=0;i<l;i++)
        for(j=0;j<c;j++)
        {
             *(B[i]+j) *= scal;
        }
}


    