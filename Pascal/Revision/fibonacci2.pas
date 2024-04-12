program fibonacci2;
uses crt;
function fibo(n:integer): integer;
  begin
    if n<3 then
      fibo:=1
    else
      fibo:=n+fibo(n-1);
  end;
var
  nbr:Integer;
begin
  write('Enter the number: ');
  readln(nbr);
  writeln('La somme est: ',fibo(nbr));
  readln;
end.
