#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
void main()
{
char mesures[100] =
"CHANNELA 0 10 20 30 40 30 20 10 0 -10 -20 -30 -40 -30 -20 -10 0";
int i,j,val[20],nombre_val=0;
char temp[4];   /* chaine temporaire */

/* recherche des nombres */
for(i=9;mesures[i]!='\0';i++)
	{
	for(j=0;(mesures[i]!=' ')&&(mesures[i]!='\0');j++)
		{
		temp[j]=mesures[i];
		i++;
		}
	temp[j] = '\0';     /* On borne la chaine */
	val[nombre_val] = atoi(temp); /* Conversion de la chaine temporaire en nombre */
	nombre_val++;
	}

/* Affichage du resultat */
clrscr();
for(i=0;i<nombre_val;i++)printf("val[%d] = %d\n",i,val[i]);
printf("POUR SORTIR FRAPPER UNE TOUCHE:");
getch();
}