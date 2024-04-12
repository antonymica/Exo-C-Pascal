#include<stdio.h>

int main()
{
    char *voyelle, i;
    int nVoy=6;
    voyelle=(char*)malloc(sizeof(char)*nVoy);
    printf("Adresse : %p\n\n",voyelle);
    
    *voyelle = 'a';
    *(voyelle+1) = 'o';
    *(voyelle+2) = 'i';
    *(voyelle+3) = 'e';
    *(voyelle+4) = 'u';
    *(voyelle+5) = 'y';
    printf("Les voyelles sont :\n");
    for(i=0;i<nVoy;i++)
        printf("Caractère : %c\tASCII: %d\n",*(voyelle+i),*(voyelle+i));
    
    printf("Après transformation : \n");
    
    for(i=0;i<nVoy;i++)
    {
        *(voyelle+i) = *(voyelle+i)-32;
    }
    for(i=0;i<nVoy;i++)
        printf("Caractère : %c\tASCII: %d\n",*(voyelle+i),*(voyelle+i));
    
    
    return 0;
}