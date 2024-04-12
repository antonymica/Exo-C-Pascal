
#include <stdio.h>
#include <conio.h>
void main()
{
int i,tab[20] = {4,-2,-23,4,34,-67,8,9,-10,11, 4,12,-53,19,11,-60,24,12,89,19};
printf("VOICI LE TABLEAU:\n\n");
for(i=0;i<20;i++)
	if (((i+1)%5)==0) printf(" %d \n",tab[i]);
	else printf(" %d ",tab[i]);
printf("\nPOUR SORTIR FRAPPER UNE TOUCHE: ");
getch();
}