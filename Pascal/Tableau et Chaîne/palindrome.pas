{Un mot est dit palindrome si le mot se lit de 
gauche à droite et de droite à gauche (ex: elle,
 radar, ici...}
program palindrome;
uses crt;
var mot: string[250];
function palindrome(ch:String[250]): boolean;
  var i,j: integer; pal:boolean;
  begin
    i:=1;
    j:=sizeof(ch);
    pal:=true;
    while (i<j) and (pal) do
      begin
        if ch[i]<>ch[j] then
          begin
            pal:=false;
          end;
        i:=i+1; j:=j-1;
      end;
    palindrome:=pal;
  end;
begin
  writeln('Donner le mot');
  readln(mot);
  if palindrome(mot) then
    begin
      writeln(mot,' est un palindrome');
    end
   else
    begin
      writeln(mot,' n''est pas un palindrome');
    end;
  readln;
end.
