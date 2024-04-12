program sommecube;
uses crt;
function unite(x:Integer):Integer ;
  begin
    unite:=x mod 10;
  end ;
function cube(x:Integer):Integer ;
  begin
    cube:= x*x*x;
  end ;
var a,b,s:Integer;
begin
  for a:=0 to 500 do
    begin
      s:=0; b:=a;
      repeat 
        s:=s+cube(unite(b));
        b:=b div 10;
      until b=0;
      if s=a then
      WriteLn(a, ' est egale a la somme des cube de ses chiffres');
    end;
  readln;
end.
