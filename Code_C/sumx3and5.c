#include<stdio.h>

int main()
{  int i,sum=0;
    printf("Sum of multiple 3 and 5 inf 1000:\n");
    for(i=0;i<1000;i++){
        if(i%3){
            sum=sum+i;
        }
        if(i%5){
            sum=sum+i;
        }
    }
    printf("%d",sum);
    return 0;
}