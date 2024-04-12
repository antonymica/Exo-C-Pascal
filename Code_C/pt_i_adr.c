#include <stdio.h>
#include <conio.h>

void main()
{
int *i;
i = (int*)malloc(4);
*i = 300;
printf("adresse = %p   variable = %d\n",i,*i);
free(i);
printf("\nPOUR CONTINUER FRAPPER UNE TOUCHE ");
getch();
}