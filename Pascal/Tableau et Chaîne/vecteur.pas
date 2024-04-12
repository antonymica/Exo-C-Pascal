program vecteur;
uses crt;
var
  t:array[1..50] of integer;
  i,j,x,n:Integer ;
begin
  repeat
    writeln('Entrer la taille exacte du vecteur(n<50)');
    readln(n);
  until (n>0) and (n<=50);
  for i:=1 to n do
    begin
      writeln('Saisir l''element de t[',i,']');
      readln(t[i]);
    end;
  for i:=1 to n do
    begin
      writeln('t[',i,']=',t[i]);
    end;
  i:=1;
  {position du 1ere element de la sequence}
  while (i<n) and (t[i]>t[i+1]) do
    begin
      i:=i+1;
    end;
  {position du dernier element de la sequence s'il existe(j) et permutation}
  j:=1;
  if j<n then
    begin
      j:=i+1;
      while (j<n) and (t[j]<=t[j+1]) do
        begin
          j:=j+1;{permutation}
        end;
      while i<j do
        begin
          x:=t[i]; 
          t[i]:=t[j];
          t[j]:=x;
          i:=i+1; j:=j-1;
        end;
    end;
    writeln('Apres inversion,on a:');
    for i:=1 to n do
      begin
        writeln('t[',i,']=',t[i]);
      end;
  readln;
end.
