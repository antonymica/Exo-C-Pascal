program tablem;
uses crt;
function reponse(c:Char):Boolean ;
  begin
    reponse:=false;
    if (c = 'o') or (c = 'O') then
    reponse := true;
  end;
procedure affichetable(a:Integer);
var i:Integer;
  begin
    for i:= 1 to 9 do
      begin
        WriteLn(a, 'x' ,i, '=', a*i);
      end;
  end ;
var
    a:Integer;
    rep:Char;
begin
  repeat 
    WriteLn('Donner un entier');
    readln(a);
    affichetable(a);
    WriteLn('Voulez vous conituez? O/N');
    readln(rep);
  until not reponse(rep);
end.
