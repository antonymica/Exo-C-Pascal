program moyenne;
uses crt;
var
  x,sum: real;
  n:integer;
  continu: boolean;
begin
  n:=0;
  sum:=0;
  continu:=true;
  while continu do
    begin
      write('Entrer un note: '); readln(x);
      if (x<>-1) then
        begin
          n:=n+1; sum:=sum+x;
        end
       else
        begin
          continu:=false;
        end;
    end;
  writeln('Le moyenne est de: ',sum/n:5:2);
  readln;
end.
