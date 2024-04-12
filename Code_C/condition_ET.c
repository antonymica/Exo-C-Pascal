#include<stdio.h>

int main()
{  int n=16,x,i=1;
    printf("x = "); scanf("%d",&x);
    while(getchar() != '\n');
    if((n>x) && (x>i++)){
        printf("L'instru vrai i=%d\n",i);
    }
    else{
        printf("L'instru faux i=%d\n",i);
    }
    return 0;
}