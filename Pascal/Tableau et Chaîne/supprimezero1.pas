program supprimezero1;
uses crt;
var
  t:array[1..20] of integer;
  i,j,n:integer;
begin
  repeat 
    writeln('Entrer la taille exacte du vecteur(n<=20');
    readln(n);
  until (n>0) and (n<=20);
  for i:=1 to n do
   begin
    writeln('Saisir l''element de t[',i,']');
    readln(t[i]);
   end;
   i:=1;
   while i<=n do
     begin
       if t[i]=0 then
       begin
         for j:=i to n-1 do 
           begin
             t[j]:=t[j+1];
           end;
         n:=n-1;
       end;
       i:=i+1;
     end;
   writeln('Apres suppression de 0, le vecteur devient');
  for i:=1 to n do
   writeln('t[',i,']=',t[i]);
  readln;
end.
