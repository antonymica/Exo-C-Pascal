program apparition3;
uses crt;
var 
    ch:Char;
    nbA:Integer;
begin
  nbA:=0;
  readln(ch); {Lecture de la premiere valeur de ch avant la boucle}
  while ch <> '*' do
    begin
     if ch = 'A' then
      nbA:=nbA+1;
      ReadLn(ch);{la lecture suivante se fait apres le traitement}
    end;
  writeln('Le nombre d''apparition de A est: ',nbA);
  readln;
end.
{Mety tsara koa ito}
