#include<stdio.h>
#include<stdlib.h>
void litchar(char*);
void minMaj(char*);
void ecritchar(char*);

int main()
{  char car1,car2;
    printf("Enter a letter: ");
    litchar(&car1); minMaj(&car1);
    ecritchar(&car1);
    printf("Second letter: ");
    litchar(&car2); minMaj(&car2);
    ecritchar(&car2);
    return 0;
}

void litchar(char *c0)
{
    while((*c0=getchar())=='\n');
    while(getchar()!='\n');
}
void minMaj(char *c1)
{
    if ((*c1>='a') && (*c1<='z'))
        *c1='A'+*c1-'a';
}
void ecritchar(char *c2)
{
    printf("En majuscule c'est %c",*c2);
    printf("\n\n");
}

