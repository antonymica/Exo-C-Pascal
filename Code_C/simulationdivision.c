#include<stdio.h>
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*   Simulation de la division    */
/*                                */
/*                                */
/**********************************/
int main()
{ int a,b,q=0,r;
  printf("\tDIVISION SIMULÉ\n\n");
  
  printf("Premier nombre: ");
    scanf("%d",&a);
  printf("Deuxième nombre: ");
    scanf("%d",&b);
  
  if(a>b){
    r=a;
    while(r>b){
       q+=1;
       r-=b;
    }
  }
  else{
    r=b;
    while(r>a){
       q+=1;
       r-=a;
    }
  }
 
  printf("Quotient=%d\tReste=%d",q,r);
  return 0;   
}