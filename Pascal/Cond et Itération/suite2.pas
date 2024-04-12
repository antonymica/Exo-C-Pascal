program suite2;
uses crt;
var x,y,z,Un,i,n:Integer;
begin
  writeln('Donner un entier N>2');
  repeat 
    readln(n);
  until n>2;
    x:=0; y:=1; z:=2;
  for i:=3 to n do
    begin
      Un:=z+x;
      x:=y; y:=z; z:=Un;
    end;
  case n of
      0:Un:=x;
      1:Un:=y;
      2:Un:=z;
  end;
  writeln('Le terme Un est: ',Un);
  readln;
end.
