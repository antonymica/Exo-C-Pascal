program quotrest;
uses crt;
var a,b,q,r:Integer;
procedure quotrest(x,y,q,r:Integer);
begin
  q:=0; r:=x;
  while r>=y do
    begin
      r:=r mod b;
      q:=q +1;
    end;
  WriteLn('Le quotient est: ',q,' et le reste est: ',r);
end;
begin
  writeln('Donner deux nombre');
  ReadLn(a,b);
  quotrest(a,b,q,r);
  readln;
end.
