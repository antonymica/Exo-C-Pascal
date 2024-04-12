program adivb;
uses crt;
var a,b,r:Integer;
begin
  WriteLn('Donner deux entier positif');
  repeat 
    ReadLn(a, b);
  until (a>0) and (b>0);
   r:=a;
     while r>0 do
       begin 
         r:=r-b;
       end;
     if r=0 then
       writeln(a, ' est divisible par ' ,b)
     else
       writeln(a, ' n''est pas divisible par ',b);
  readln;
end.
