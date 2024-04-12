program texte;
uses crt;
var
  tx: String;
  t,nbc,nbm,nbp,i: Integer;
begin
  writeln('Donner le texte');
  readln(tx);
  
  t:=SizeOf(tx);
  nbc:=0; nbm:=0; nbp:=0; i:=1;
  
  while i<=t do
    begin
      if tx[i]=' ' then
        begin
          i:=i+1;
        end
       else
        begin
          while (i<=t) and (tx[i] <> ' ') and (tx[i] <> '.') do
            begin
              nbc:=nbc+1; i:=i+1;
            end;
          nbm:=nbm+1;
          if tx[i]='.' then
            begin
              nbp:=nbp+1;
            end;
        end;
    end;
    
    writeln('Nombre de caractère: ',nbc,' Nombre de mots: ',nbm,' Nombre de phrases: ',nbp);
  readln;
end.
