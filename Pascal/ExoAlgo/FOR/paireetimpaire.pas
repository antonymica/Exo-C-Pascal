program paireetimpaire;
uses crt;
var i,n:Integer;
begin
  writeln('Combien de nombre paire et impaire voulez vous afficher? ');
  readln(n);
  
  for i:=1 to n do
    begin
      writeln('Paire: ',2*i-2,' ');
    end;
  writeln('-----------');
  for i:=1 to n do
    begin
      writeln('Impraire: ',2*(n-i)+1,' ');
    end;
  readln;
end.
