program anagramme2;
uses crt;
var
  m1,m2: String;
  i,j,t1,t2,f1,f2:integer;
  x:Char;
  anag: boolean;
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
        for j:=1 to t1 do
          begin
            if m1[j]=x then
              f1:=f1+1;
          end;
        f2:=0;
        for j:=1 to t1 do
          begin
            if m2[j]=x then
              f2:=f2+1;
          end;
        if f1<>f2 then
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
