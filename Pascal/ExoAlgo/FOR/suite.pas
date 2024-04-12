program suite;
{U1=10 et Un=2Un-3}
uses crt;
var Un,i,n:LongInt;
begin
  writeln('Combien de nombre voulez vous afficher?');
  readln(n);
  Un:=10;
  for i:=1 to n do
    begin
      writeln('Le numero ',i,' est: ',Un);
      Un:=2*Un-3;
    end;
  readln;
end.
