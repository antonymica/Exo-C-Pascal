program somme;
uses crt;
var 
    a, b:Integer;
function som2(x,y :Integer) :Integer ;
  begin 
    som2:=x+y;
  end;
begin
  WriteLn('Donner deux entier');
  readln(a,b);
  writeln(a, '+' ,b, '=', som2(a,b));
  readln;
end.
