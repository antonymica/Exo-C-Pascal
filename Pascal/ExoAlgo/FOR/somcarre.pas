program somcarre;
uses crt;
var
  i,n,res:LongInt;
begin
  write('Input number: '); readln(n);
  res:=0;
  for i:=1 to n do
    begin
      res:=res+i*i;
      writeln('Sum of ',i,' square is: ',res);
    end;
  writeln('Finally, sum of ',n,' square is: ',res);
  readln;
end.
