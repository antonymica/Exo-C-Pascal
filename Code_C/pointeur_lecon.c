#include<stdio.h>
void tripleAge(int *pointage);
int main()
{   int age = 10;
    int *pointeursurage = NULL;
    pointeursurage = &age;
    
    printf("\t LES POINTEURS \n\n");
    
    printf("Voici nos variable: \n\tint age = 10;\n\tint *pointeursurage = NULL; \n\tpointeursurage = &age;\n\n");
    
    printf("Le contenu du pointeursurage :\n\t %p\n",pointeursurage);
    printf("L'adresse du pointeursurage :\n\t %p\n",&pointeursurage); 
    printf("La valeur du contenu du pointeursurage :\n\t %d\n",*pointeursurage);
    
    printf("Verifions: \n\nL'adresse du var age : %p\nLe contenu de age : %d\n\n\n",&age,age);
    
    printf("EXEMPLE:\n\nCalculons le triple de la var age\n\n");
    tripleAge(&age);
    printf("Appelle de la fonction:\ntripleAge(&age);\nprintf(\"Cela return d\",age);\n");
    printf("Cela return %d\n",age);
    printf("Voici la fonction:\n\nvoid tripleAge(int *pointAge)\n{\n\t*pointAge *= 3;\n}\n\n");
    
    return 0;
}

void tripleAge(int *pointAge)
{
    *pointAge *= 3;
}
    