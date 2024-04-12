program apparition2;
uses crt;
var
    ch:Char;
    nbA:Integer;
begin
  nbA:=0;
  ch:= 'X'; {Initialiser ch à un caractere autre que '*'}
  while ch <> '*' do
    begin
      readln(ch); {la lecture se fait avant le traitement}
      if ch='A' then
        nbA:=nbA+1;
    end;
  writeln('Le nombre d''apparitiin de A edt: ',nbA);
  readln;
end.
{Mety tsara ito}