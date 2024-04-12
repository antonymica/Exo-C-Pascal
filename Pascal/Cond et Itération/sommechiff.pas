program sommechiff;
uses crt;
var n,s,r:Integer;
begin
  writeln('Donner un entier naturel');
  repeat
    readln(n);
  until n>=0;
    s:=0; r:=n;
    while r>0 do
      begin
        s:=s+r mod 10;
        r:=r div 10;
      end;
    writeln('La somme des chiffres qui composent ' ,n, ' est: ',s);
  readln;
end.
