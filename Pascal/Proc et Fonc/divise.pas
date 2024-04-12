program divise;
uses crt;
var
  a,b:Integer;
function divise(a,b:Integer) :Boolean ;
  begin
    divise:=false;
    if b mod a=0 then
      divise:=true;
  end;
begin
  writeln('Donner les deux nombre');
  readln(a,b);
  if divise(a,b) then
    WriteLn(a, ' divise ',b)
    else
    writeln(a, ' ne divise pas ',b);
  readln;
end.
