program vecteur;
uses crt;
var
  tab: array[1..10] of Integer ;
  i,n:Integer;
begin
  repeat 
   WriteLn('Entrer la taille du vecteur entre 1 à 10'); 
   readln(n);
  until (n>0) and (n<11);
    for i:=1 to n do
      begin
      WriteLn('Valeur numero ',i);
      readln(tab[i]);
      end;
    for i:=1 to n do
      begin
        WriteLn('Le vecteur contient');
        WriteLn(tab[i]);
      end;
  readln;
end.
