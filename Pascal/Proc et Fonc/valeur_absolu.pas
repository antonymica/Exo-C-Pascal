program valeur_absolu;
uses crt;
var a:Integer;
function vabs(a:Integer):Integer ;
  begin
    vabs:=a;
    if a<0 then
    vabs:= -a;
  end;
begin
  WriteLn('Donner la valeur');
  readln(a);
  WriteLn('La valeur absolu de ',a,' est: ',vabs(a));
  readln;
end.
