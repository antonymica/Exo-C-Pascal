program factorielle;
uses crt;
var
    a:Integer;
function fact(x:Integer) :Real ;
var
  i, f:Integer;
  begin
    f:=1; {on peut utiliser directement le nom de la fonction au lieu de f}
    for i :=1 to x do
      begin
        f:=f*i;
      end;
    fact:=f;
  end ;
begin
  WriteLn('Donner le nombre à calculer');
  ReadLn(a);
  writeln(a, '! = ',fact(a));
  readln;
end.
