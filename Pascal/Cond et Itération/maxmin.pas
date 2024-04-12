program maxmin;
uses crt;
var i,n,max,min,x:Integer;
begin
  writeln('Donner un entier positf');
    repeat 
      readln(n);
    until n>0;
  writeln('Maintenant vous allez donner ' ,n,' nombres que vous voulez savoir le min et max d''entre eux');
  readln(x);
    max:=x; min:=x;
      for i:=2 to n
        do begin
          readln(x);
            if max<x then
              max:=x
            else if min>x then
              min:=x
            end;
  writeln('Le minimum des valeur est: ' ,min, ' et le maximum est: ' ,max);
              
  readln;
end.
