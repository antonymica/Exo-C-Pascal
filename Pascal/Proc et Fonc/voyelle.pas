program voyelle;
uses crt;
var c:Char;
function voyelle(c:Char):Boolean ;
  begin
    voyelle:=false;
    case c of
      'a','e','i','o','u','y': voyelle:=true;
    end;
  end;
begin
  WriteLn('Donner un caractère');
  ReadLn(c);
  if voyelle(c) then
    writeln('C''est une voyelle')
    else
    writeln('Ce n''est pas une voyelle');
  readln;
end.
