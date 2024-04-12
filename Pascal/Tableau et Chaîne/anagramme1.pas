program anagramme1;
uses crt;
var
  m1,m2: String;

procedure tri(ch: String);
  var i,j,t: integer; x: char;
  begin
    t:=sizeof(ch);
    for i:=1 to t-1 do
      begin
        for j:=i+1 to t do
          begin
            if ch[i]>ch[j] then
              begin
                x:=ch[i]; ch[i]:=ch[j]; ch[j]:=x;
              end;
          end;
      end;
  end;
  
begin
  writeln('Donner deux mots: ');
  readln(m1,m2);
  tri(m1); tri(m2);
  if m1=m2 then
    begin
      writeln('Les deux mots sont anagrammes');
    end
   else
    begin
      writeln('Les deux mots ne sont pas anagramme');
    end;
  readln;
end.
