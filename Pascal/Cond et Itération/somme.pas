program somme;
uses crt;
var i,n,s:Integer;
begin
  WriteLn('Donner un entier N');
  readln(n);
    s:=0;
      for i:=1 to n-1
        do begin
        s:=s+i;
        end;
  writeln('La somme des ' ,n, ' premier nombre est: ' ,s);
  readln;
end.
