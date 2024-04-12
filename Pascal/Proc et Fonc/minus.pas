program minus;
uses crt;
function minus(c:Char):Char ;
  var
    i,j:Integer;
    x:Char;
  begin
    {recherche de la position de c dans l'alphabet}
    i:=0;
    for x:='A' to c do
      begin
        i:=i+1;
      end;
    j:=1;
    for x:='a' to 'z' do
      begin
        if i=j then
          minus:=x;
        j:=j+1;
      end;
    WriteLn('Le caractere ',c,' en minuscule est ',minus);
  end;
var
   c:Char;
begin
  WriteLn('Enter le caractere');
  ReadLn(c);
  minus(c);
  readln;
end.
