program supprimezero2;
uses crt;
var
  t:array[1..20] of integer;
  i,j,nbn,n:Integer;
begin
  repeat 
    writeln('Entrer la taille exacte du vecteur(n<20)');
    readln(n);
  until (n>0) and (n<=20);
  for i:=1 to n do
    begin
      writeln('Saisissez l''element de t[',i,']');
      readln(t[i]);
    end;
  i:=1; j:=1; nbn:=0;
  while j<=n do
    begin
      if t[j]=0 then
        nbn:=nbn+1
      else
       begin
        t[i]:=t[j]; i:=i+1;
       end;
    j:=j+1;
    end;
  n:=n-nbn;
  writeln('Apres suppression');
  for i:=1 to n do
    writeln('t[',i,']=',t[i]);
  readln;
end.
