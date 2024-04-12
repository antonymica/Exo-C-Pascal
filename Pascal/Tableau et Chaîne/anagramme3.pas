program anagramme3;
uses crt;
var
  m1,m2: string;
  t1,t2,i,j: Integer;
  anag:boolean;
begin
  writeln('Donner les deux mots');
  readln(m1,m2);
  t1:=sizeof(m1); t2:=sizeof(m2);
  anag:=false;
  if t1=t2 then
    begin
      anag:=true; i:=1;
      while (i<=t1) and anag do
        begin
          j:=1; anag:=false;
          while (j<=t1) and (not anag) do
            begin
              if m1[i]=m1[j] then
                begin
                  m2[j]:='*';
                end;
              j:=j+1;
            end;
          i:=i+1;
        end;
      i:=1;
      while (i<=t1) and (anag) do
        begin
          if m2[i]<>'*' then
            begin
              anag:=false;
            end;
          i:=i+1;
        end;
    end;
  if anag then
    writeln('Les deux mots sont anagramme')
   else
    writeln('Les deux mots ne sont pas anagramme');
  readln;
end.
