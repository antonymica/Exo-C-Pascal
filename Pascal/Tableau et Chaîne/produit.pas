program produit;
uses crt;
var
  t:array[1..20] of Integer ;
  i,n,p,nbp:Integer ;
begin
  repeat 
    WriteLn('Entrer la taille exacte du tableau n<20');
    ReadLn(n);
  until (n>0) and (n<=20);
  p:=1; nbp:=0;
  for i:=1 to n do
    begin
      WriteLn('Entrer l''element n°',i,' (i>0)');
      readln(t[i]);
      if t[i]>0 then nbp:=nbp +1;
      p:=p * t[i];
    end;
  writeln('Produit=',p,' Nb val positif=',nbp);
  readln;
end.
