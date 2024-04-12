program repetition;
uses crt;
var
  t:array[1..20] of integer;
  i,n,v1,v2,nbrep:integer;
begin
  repeat 
    writeln('Entrer la taille exacte du vecteur(n<=20)');
    readln(n);
  until (n>0) and (n<=20);
  for i:=1 to n do
    begin
      writeln('Saisissez l''element de t[',i,']');
      readln(t[i]);
    end;
  writeln('Donner deux valeur v1 et v2');
  readln(v1,v2);
  i:=1; nbrep:=0;
  while i<n do
    begin
      if (t[i]=v1) and (t[i+1]=v2) then
        begin
          nbrep:=nbrep+1; i:=i+2;
        end
      else
        i:=i+1;
    end;
  writeln('Nombre de successions des valeurs ',v1,' et ',v2,' est ',nbrep);
  readln;
end.
