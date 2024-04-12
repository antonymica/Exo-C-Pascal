program suite1;
uses crt;
{Uo=2 U1=3 Un+2=(2/3)Un+1 - (1/4)Un avec N<100}
var
    i,n: Integer;
    x,y,Un:Real;
begin
  writeln('Enter N tq 0<N<100 le terme de la suite');
  repeat 
    readln(n);
  until (n>0) and (n<100);
    x:=2; y:=3;
  {Attention le 1er terme (N=1) correspond à Uo, la recurrence commence à partir de 3}
  for i:=3 to n do
    begin
      Un:=(2/3)*y-(1/3)*x;
   {il faut lineariser l''expression}
      x:=y; y:=Un;
   {Attention à l''ordre entre les deux derniere affectations}
    end;
  case n of
      1:Un:=x;
      2:Un:=y;
  end;
  writeln('Le ' ,n, 'eme terme est: ',Un);
  readln;
end.
{Tsy mety ny variable real io}