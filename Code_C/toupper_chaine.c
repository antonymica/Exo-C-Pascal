#include<stdio.h>
#include<ctype.h>
#define dim 21
int main()
{  int i=0,nbr; char text[dim];
    printf("Saisir le texte: ");
    while((text[i]=getchar()) != '\n')
      {  
        printf("\ni:%d\ttext[%d]=%c",i,i,text[i]);
        i++;
      }
    nbr = i;
    printf("\n\nAprès conversion :");
    i=0;
    while(i<nbr) putchar(toupper(text[i++]));
    
    return 0;
}