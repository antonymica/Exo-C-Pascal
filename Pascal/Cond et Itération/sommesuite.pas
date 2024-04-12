program sommesuite;
uses crt;
var 
    i,n,k:Integer;
    px,x,Sn:Real;
begin
  repeat 
    writeln('Donner l''entier N');
    readln(n);
  until n>=0;
  writeln('Donner le reel x');
  readln(x);
    k:=1; {k represente (-1)î}
    Sn:=-1; {valeur initial de Sn pour i=0}
    px:=1; {puissance de x pour i=0}
  for i:=1 to n do
    begin
      k:=-k;
      px:=px*x;
      Sn:=Sn+k/px;
    end;
  writeln('La somme Sn=' ,Sn);
  readln;
end.
