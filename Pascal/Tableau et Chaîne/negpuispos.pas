program negpuispos;
uses crt;
var
  t:array[1..20] of Integer ;
  i,j,n,x:Integer;
begin
  repeat
    writeln('Entrer la taille du vecteur (n<=20)');
    readln(n);
  until (n>0) and (n<=20);
  for i:=1 to n do
    begin
      writeln('Saisir l''element t[',i,']');
      readln(t[i]);
    end;
  j:=1;
  while (j<=n) and (t[j]<0) do
    begin
      j:=j+1;
    end;
  i:=j;
  while j<=n do
    begin
      if t[j]<0 then
        begin
        x:=t[i]; t[i]:=t[j]; t[j]:=x; 
        i:=i+1;
        end;
      j:=j+1;
    end;
  writeln('Le vecteur devient');
  for i:=1 to n do
    writeln('t[',i,']=',t[i]);
  readln;
end.
