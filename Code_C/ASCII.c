#include<stdio.h>
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*Affichage du code ASCII et HEXA */
/*               des              */
/*            caractère.          */
/**********************************/
int main()
{   
   char cmp;
    for(cmp='A';cmp<='Z';cmp++){
        printf("Caractère=%c Code=%d CodeHexa=%x\n",cmp,cmp,cmp);
    }
    for(cmp='1';cmp<='9';cmp++){
        printf("Caractère=%c Code=%d CodeHexa=%x\n",cmp,cmp,cmp);
    }
    return 0;
    
}