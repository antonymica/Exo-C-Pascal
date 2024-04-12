program inverse;
uses crt;
var
  t: array[1..20] of Integer ;
  i,j,x,n:Integer;
begin
  repeat
  writeln('Entrer la taille exacte du vecteur (n<=20)');
  readln(n);
  until (n>0) and (n<=20);
  for i:=1 to n do 
    begin
      writeln('Saisir l''element t[',i,']');
      readln(t[i]);
    end;
  i:=1; j:=n;
  while i<j do
    begin
      x:=t[i]; t[i]:=t[j]; t[j]:=x;
      i:=i+1; j:=j-1;
    end;
  writeln('Apres inversement, le vecteur represente');
  for i:=1 to n do
    writeln('t[',i,']=',t[i]);
  readln;
end.
