program puissance;
uses crt;
function puissance(x:Real;n:Integer): Real ;
  begin
    if (n=0) or (x=1) then
      puissance:=1
     else
      puissance:=x*puissance(x,n-1);
  end;
var
  nbr:Real;
  i:integer;
begin
  Write('Entrer le nombre: ');
  readln(nbr);
  write('Entrer la puissance: ');
  readln(i);
  writeln('C''est egale à ',puissance(nbr,i));
  readln;
end.
