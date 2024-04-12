program apparition1;
uses crt;
var
    ch:Char;
    nbA:Integer;
begin
  nbA:=0;
  repeat 
    ReadLn(ch);
      if ch = 'A' then
        nbA:=nbA+1;
  until ch = '*';
  Writeln('Le nombre d''apparition de A est: ',nbA);
  readln;
end.
{Mety tsara koa}
