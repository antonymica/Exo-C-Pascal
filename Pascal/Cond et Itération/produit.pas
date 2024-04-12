program produit;
uses crt;
var a,b,p,i:Integer;
begin
  Writeln('Donner les deux nombres');
  Readln(a, b);
    if (a=0) or (b=0) then
      p:=0
     else
      p:=0; {initialiser le produit à 0}
        for i:=1 to b do
          begin
            p:=p+a;
          end;
  Writeln('Le produit ',a,'x',b,'=',p);
  readln;
end.
