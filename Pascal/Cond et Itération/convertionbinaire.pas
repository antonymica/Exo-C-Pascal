program convertionbinaire;
uses crt;
var vb,b,d,p2:Integer;
begin
  repeat 
    writeln('Donner un entier en binaire');
    readln(vb);
  until vb>=0;
    b:=vb; {sauvegarde de vb pour affichage}
    p2:=1; {p2 contient la puissance de 2, 
    initialement 2^0=1}
    d:=0;
  repeat 
    d:=d+(b mod 10)*p2; {recuperer le 
    coefficient= le chiffre le plus à droite 
    du nombre}
    p2:=2*p2; {calcul de la puissance suivant 
    de 2}
    b:=b div 10; {pour passer au coefficient
     suivant}
  until b=0;
  writeln('La valeur décimal de ' ,vb,' est ',d);
  readln;
end.
