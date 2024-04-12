#include <stdio.h>
#include <conio.h>
void main()
{
int i,tab[10]={4,12,53,19,11,60,24,12,89,19};
printf("VOICI LES ELEMENTS DU TABLEAU\n\t ET LEURS ADRESSES:\n");
for(i=0;i<10;i++)
printf("ELEMENT N¯%1d:%2d  ADRESSE:%p\n",i,tab[i],tab+i);
printf("POUR SORTIR FRAPPER UNE TOUCHE: ");
getch();
}