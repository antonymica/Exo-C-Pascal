program multipleetfactorielle;
uses crt;
var
  i,n1,n2,res: integer;
  res2:Real;
begin
  write('1st input: ');
  readln(n1);
  write('2nd input: ');
  readln(n2);
  res:=0;
  for i:=1 to n2 do
    begin
      res:=res+n1;
    end;
  writeln(n1,' x ',n2,' = ',res);
  res2:=res;
  res2:=1;
  for i:=2 to res do
    begin
      res2:=res2*i;
    end;
  writeln(res,'! = ',res2:4:3);
  readln;
end.
