program sommeE1;
uses crt;
{E=(1+2)x(1+2+3)x...x(1+2+3+..+(n-2)+(n-1)+n) avec n>=2}
var i,n,E,s:Integer;
begin
  Writeln('Donner le nombre de terme N');
  readln(n);
    E:=1; s:=1;
  for i:=2 to n do
    begin
      s:=s+i; E:=E*s;
    end;
  writeln('E=',E);
  readln;
end.
