program exo4;
uses crt;
var
 i, n:Integer;
begin
WriteLn('Enter a number');
  ReadLn(n);
   Write('Here is the multication table of this number:      ');
 for i := 1 to 10 do
   begin
  WriteLn(n, 'x' ,i, '=' ,n*i,);
    end;
  readln;
end.
