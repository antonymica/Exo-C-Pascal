program fibonacci;
uses crt;
function fibo(n: integer):integer;
var u1,u2,un,i: integer;
  begin
    u1:=1; u2:=1; un:=0;
    for i:=2 to n do
      begin
        un:=u1+u2;
        u1:=u2; u2:=un;
      end;
    fibo:=un;
  end;
var
  nbr: integer;
begin
 repeat
  write('Enter the number: ');
  readln(nbr);
 until nbr>=2;
  writeln('La somme est: ',fibo(nbr));
  readln;
end.
