program position;
uses crt;
var
  t,position:array[1..20] of Integer ;
  i,j,n,value:Integer;
begin
  repeat 
    WriteLn('Donner la taille du tableau (n<20)');
    readln(n);
  until (n>0) and (n<20);
  for i:=1 to n do
    begin
      writeln('Entrer l''element t[',i,']');
      ReadLn(t[i])
    end;
  writeln('Donner Valeur');
  ReadLn(value);
  j:=0;
  for i:=1 to n do
    begin
      if t[i]=value then
        begin
         j:=j+1; position[j]:=i;
        end;
    end;
  if j=0 then
    writeln(value,' non trouvée')
    else
      begin
        writeln(value,' trouvée aux position');
        for i:=1 to j do writeln(position[i]);
      end;  
    {*si on initialise j à 1, son incrementation se fait après l''affectation et la
    dimension de position devient j-1*}
  readln;
end.
{tsy mety tsara ito}
