#include <stdio.h>
#include <conio.h>

void main()
{
char *adr_deb,c;
int i,imax,compt_e = 0,compt_sp = 0;
adr_deb = (char*)malloc(30);	/* texte d'au plus 30 caracteres */

/* saisie et rangement du texte */
printf("\nADRESSE DU TEXTE: %p (ATTRIBUEE PAR LE COMPILATEUR)",adr_deb);
printf("\nENTRER UN TEXTE: ");
for (i=0;((c=getchar())!='\n');i++) *(adr_deb + i) = c;
imax = i;	/* borne superieure */

/* lecture de la memoire et tri */
for (i=0;i<imax;i++)
	{
	c = *(adr_deb+i);
	printf("\nCARACTERE: %c ADRESSE: %p",c,adr_deb+i);
	if (c=='e') compt_e++;
	if (c==' ') compt_sp++;
	}

/* resultats */
printf("\nNOMBRE DE e: %2d NOMBRE d'espaces: %2d\n",compt_e,compt_sp);
free(adr_deb);
printf("\nPOUR CONTINUER FRAPPER UNE TOUCHE ");
getch();
}