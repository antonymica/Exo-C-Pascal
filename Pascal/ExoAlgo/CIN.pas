program CIN;
uses crt;
var
  cin,r: Real;
  i,s,k:LongInt;
  n:String;
  t: array[1..16] of integer;
begin
  cin:=201031058836;
  s:=0;
  r:=cin;
  while(r>0) do
    begin
      s:=s + r mod 10;
      r:=r div 10;
    end;
  n:=cin;
  k:=Length(n);
  for i:=1 to k do
    begin
      t[i]:=n[i];
    end;
  for i:=1 to k do
    begin
      write(t[i],'+',t[i+1],' = ');
    end;
  writeln(s);
  
  readln;
end.
