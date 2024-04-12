program produit2;
uses crt;
var a,b,p,i:Integer;
begin
  Writeln('Donner les deux nombres');
  ReadLn(a, b);
    if (a=0) or (b=0) then
      p:=0
      else if a>b then
          p:=a;
         for i:=2 to b do
          begin
             p:=p+a;
          end;
       if a<b then
          p:=b;
          for i:=2 to a do
            begin
             p:=p+b;
            end;
  writeln('Le produit de ',a,'x',b,'=',p);
  readln;
end.
