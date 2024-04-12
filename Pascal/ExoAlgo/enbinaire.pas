program enbinaire;
uses crt;
var
  r: array[1..64] of Integer ;
  n, i: LongInt;
begin
  Write('Enter the number: ');
  ReadLn(n);
  i:=1;
  while n<>0 do
    begin
      r[i]:=n mod 2;
      n:= n div 2;
      i:=i+1;
    end;
    i:=i-1;
    while i>0 do
      begin
        write(r[i]);
        i:=i-1;
      end;
  readln;
end.
