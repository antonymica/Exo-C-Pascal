#include<stdio.h>

int main()
{ char nom[64];
  int i=0, nbrA=0;
    printf("Enter your name: ");
    while ((nom[i]=getchar()) != '\n')
    {
       i++;
    }
    for(i;i>=0;i--){
       if (nom[i] == 'A'){
           nbrA++;
       }
       if (nom[i] == 'a'){
           nbrA++;
       }
    }
    printf("Le nombre de A est %d\n",nbrA);
    printf("Donc vous avez %d ankizy ;-p ",nbrA);
    return 0;
}