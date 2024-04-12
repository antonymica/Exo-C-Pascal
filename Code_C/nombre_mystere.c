#include<stdio.h>
#include<stdlib.h>
#include<time.h>
const MAX=100, MIN=1;

int main()
{   
    int nombreMystere,nbr;
    srand(time(NULL));
    nombreMystere = (rand() % (MAX - MIN +1) - MIN);
    printf("\tBIENVENU DANS LE JEU\n\t   NOMBRE MYSTÈRE\n%d < NombreMystere < %d\n",MIN,MAX);
    do
    {
        printf("\nEnter le nombre mystere: ");
        scanf("%d",&nbr);
        if(nbr < nombreMystere)
            printf("\nC'est plus!\n");
        else if(nbr > nombreMystere)
            printf("\nC'est moins!\n");
        else
            printf("\nBRAVO!!! C'est le bon nombre!\n");
    }
    while(nbr != nombreMystere);
    return 0;
}
    