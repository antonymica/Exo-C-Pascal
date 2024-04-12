#include <stdio.h>
#include <math.h>
#include <conio.h>
int main()
{
    float nombre[10],moyenne = 0,ecart_type = 0;
    int i;

/* saisie des nombres */
    printf("SAISIR 10 NOMBRES : \n");
    for(i=0;i<10;i++)
	    {
        	printf("nombre[%1d] = ",i);
        	scanf("%f",&nombre[i]);
     	}
    /* calculs */
    for(i=0;i<10;i++)
    	{
        	moyenne = moyenne + nombre[i];
        	ecart_type = ecart_type + nombre[i]*nombre[i];
    	}
    moyenne = moyenne/10;
    ecart_type = ecart_type/10;
    ecart_type = ecart_type - moyenne*moyenne;
    ecart_type = sqrt(ecart_type);	/* racine */
    
    printf("MOYENNE = %f  ECART_TYPE = %f\n",moyenne,ecart_type);

return 0;
}