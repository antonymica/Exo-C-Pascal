#include <stdio.h>
#include <conio.h>
void main()
{	float *adr1,*adr2;
adr1 = (float*)malloc(4);
adr2 = (float*)malloc(4);
*adr1 = -45.78;
*adr2 = 678.89;
printf("adr1 = %p adr2 = %p r1 = %.2f r2 = %.2f\n",adr1,adr2,*adr1,*adr2);
free(adr1);
free(adr2);
printf("\nPOUR CONTINUER FRAPPER UNE TOUCHE ");
getch();
}