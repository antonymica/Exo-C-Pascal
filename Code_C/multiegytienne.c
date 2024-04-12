#include<stdio.h>
/**********************************/
/*       PROGRAMME PRINCIPAL      */
/*                                */
/*   Multiplication égyptienne    */
/*                                */
/**********************************/
int main()
{ int val1,val2;
  int pp,pg; int res=0;
  printf("\tMultiplication égyptienne\n\n");
  printf("Valeur 1 est: ");
    scanf("%d",&val1);
  printf("Valeur 2 est: ");
    scanf("%d",&val2);
  
  if(val1>val2){
    pg=val1; pp=val2;
  }
  else{
    pg=val2; pp=val1;
  }

  printf("%d x %d ",pg,pp);

  while(pp){
      if(pp%2){
          pp--;
          res+=pg;
          printf("= %d x %d + %d\n",pg,pp,res);
      }/*fin du if((pp/2)*2 != pp)*/
    pg*=2;
    pp/=2;
      if(pp) printf("= %d * %d + %d\n",pg,pp,res);
  }

  printf("= %d\n",res);

 return 0;   
}