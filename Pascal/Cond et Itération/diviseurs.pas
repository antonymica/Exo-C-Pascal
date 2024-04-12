program diviseurs;
uses crt;
var x,m,i:Integer;
begin
  Writeln('Donner un nombre entier');
  readln(x);
  Writeln('Les diviseurs de ',x,' sont: ');
  {*On boucle de 1 à la moitie de x, car apres la moitie il n''y a plus de diviseur sauf x*}
  {*On peut utiliser la fonction division entier DIV et la fonction reste de cette division MOD*}
    m:=x div 2;
      for i:=1 to m do
        begin
          if x mod i = 0 then
            writeln(i);
        end;
      writeln(x);
  readln;
end.
