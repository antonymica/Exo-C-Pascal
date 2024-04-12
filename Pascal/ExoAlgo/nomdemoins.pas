program nomdemoins;
uses crt;
var
  name: String;
  n: array[1..25] of char;
  i,k:Integer;
begin
  name:='Micael';
  k:=Length(name);
  for i:=1 to k do
    begin
      n[i]:=name[i];
    end;
    
  for i:=1 to k do
    begin
      while i<=k do
        begin
          write(n[i]);
          i:=i+1;
        end;
      writeln();
    end;
  readln;
end.
