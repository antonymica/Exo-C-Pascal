program puissance;
uses crt;
var
  x,res:Real;
  i,y:LongInt;
begin
  write('Value: '); readln(x);
  write('Exposant: '); readln(y);
  res:=1;
  for i:=1 to y do
   begin
    res:=res*x;
   end;
  writeln(x:3:3,'^',y,' = ',res:3:3);
  writeln('------------');
  readln;
end.
