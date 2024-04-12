program sommeE2;
uses crt;
{E=1+1/(1+2)+1/(1+2+3)+...+1/(1+2+3+..+N) avac N>=2}
var
    i,n,s:Integer;
    E:Real;
begin
  repeat 
    readln(n);
  until n>=2;
  for i:=2 to n do
    begin
      s:=s+i; E:=E+1/s;
    end;
  writeln('E=',E);
  readln;
end.
