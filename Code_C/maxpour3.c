#include<stdio.h>
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*   Affichage du max de trois    */
/*        nombres entiers         */
/*           ############         */
/**********************************/
int main()
{  int a,b,c,max,i;
    printf("\t  MAXIMUM NUMBER\n\n");
    
    printf("Valeur 1: ");scanf("%d",&a);
    printf("Valeur 2: ");scanf("%d",&b);
    printf("Valeur 3: ");scanf("%d",&c);
    
    if(a>=b)
        max=a;
    else
        max=b;
        
    if(c>=max)
        max=c;
        
    printf("Le max entre %d, %d et %d est: %d",a,b,c,max);
    return 0;
    
}