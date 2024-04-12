program carre;
uses crt;
var x,x2:Real;
begin
  WriteLn('Donner un reel');
  ReadLn(x);
    x2:=x*x;
  WriteLn('Le carre de ' ,x, ' est: ' ,x2);
  readln;
end.
