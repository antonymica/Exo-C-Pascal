#include<stdio.h>
#define imax 6
int main()
{
    int *adr_deb,*adr_max,max,i;
    adr_deb=(int*)malloc(sizeof(int)*imax);
    printf("NOM : %s\nDATE : %s\nTIME : %s\n\n\n",__FILE__,__DATE__,__TIME__);
    printf("L'adresse de début : %p\n\n",adr_deb);
    //Saisir des nombres
    for(i=0;i<imax;i++)
    {
        printf("Donner le nombre n°%d: ",i);
        scanf("%d",adr_deb+i);
    }
    //calcul du max
    max=(int*)adr_deb;
    adr_max=(int*)adr_deb;
    for(i=0;i<imax;i++)
    {
        if(max < *(adr_deb+i))
        {
            max=*(adr_deb+i);
            adr_max=adr_deb+i;
        }
    }
    printf("max=%d\tadr_max=%p",max,adr_max);
    return 0;
}