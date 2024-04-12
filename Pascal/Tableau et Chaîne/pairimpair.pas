program pairimpair;
uses crt;
var
  t1,t2,t:array[1..20] of integer;
  i,j,k,n:Integer;
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
    j:=1; k:=1;
    for i:=1 to n do
      begin
        if t[i] mod 2 = 0 then
         begin
          t2[j]:=t[i];
          j:=j+1;
         end
        else
         begin
          t1[k]:=t[i];
          k:=k+1;
         end;
      end;
    writeln('Vecteur pairs');
    for i:=1 to j-1 do
      begin
        writeln('t2[',i,']=',t2[i]);
      end;
    writeln('Vecteur impairs');
    for i:=1 to k-1 do
      begin
        writeln('t1[',i,']=',t1[i]);
      end;
  {taille de t1 et t2 sont respectivement k-1 et j-1}
  readln;
end.
