program suiteharmonique;
uses crt;
function somme(n:Integer):Real ;
var i:Integer; s:Real;
  begin
    s:=1;
    for i:=1 to n do
      begin
        s:=s+(1/i);
      end;
    somme:=s;
  end;
var
  nb:Integer;
begin
  write('Entrer le terme: ');
  readln(nb);
  writeln('Le dernier terme est: ',somme(nb));
  readln;
end.
