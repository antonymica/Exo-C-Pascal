#include <stdio.h>
#include <conio.h>

void main()
{
char *adr_c;
int *adr_i,i=0x12345678;
adr_i = &i;
adr_c = (char*)adr_i;
printf("ADRESSE: %p CONTENU: %x\n",adr_c,*adr_c);
printf("ADRESSE: %p CONTENU: %x\n",adr_c+1,*(adr_c+1));
printf("ADRESSE: %p CONTENU: %x\n",adr_c+2,*(adr_c+2));
printf("ADRESSE: %p CONTENU: %x\n",adr_c+3,*(adr_c+3));
getch();
}