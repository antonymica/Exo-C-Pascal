program fact;
uses crt;
var
n, i:Integer;
f:Real;
begin
  Write('Entrer le nombre à calculer ');
  ReadLn(n);
  f := 1;
  for i := 1 to n do
  begin
  f := f * i;
  end;
  WriteLn('Le factorielle de ',n,' est:' ,f);
  
  readln;
end.
