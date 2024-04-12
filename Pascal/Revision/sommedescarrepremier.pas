program sommedescarrepremier;
uses crt;
function somcarre(n:integer):integer;
var i,s,c:integer;
  begin
   s:=0;
    for i:=1 to n do
      begin
        c:=i*i;
        s:=s+c;
      end;
    somcarre:=s;
  end;
var
  nbr: integer;
begin
  write('Enter the number: ');
  readln(nbr);
  writeln('La somme des premiers carres est: ',somcarre(nbr));
  readln;
end.
