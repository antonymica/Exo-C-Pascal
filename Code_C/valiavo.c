#include<stdio.h>

int main()
{ char name[8]="valiavo";
  int k=0;
   for (int i=0; i<7; ++i){
      for (int i=k; i < strlen(name); ++i){
        i==k? printf("%c",name[i]-32):
        printf("%c",name[i]);
    }
    printf("\n");
    k++;
}
    
    return 0;
}