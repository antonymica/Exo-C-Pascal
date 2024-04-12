program premier;
uses crt;
var 
    x,m,i:Integer;
    pr:Boolean;
begin
  writeln('Donner un entier');
  ReadLn(x);
  {x est premier s''il a 2 diviseurs distincts 1 et lui meme, attention 1 n''est pas premier}
    pr:=true;
      if x=1 then
        pr:=false
      else
        m:=x div 2;
        i:=2;
     while (i<=m) and (pr) do
     {Si on trouve un diviseur on arrete la boucle}
       begin
       i:=i+1;
         if x mod i = 0 then
           pr:=false;
       end;
    if pr then
      writeln(x, ' est premier')
     else
      writeln(x, ' n''est pas premier');
  readln;
end.
