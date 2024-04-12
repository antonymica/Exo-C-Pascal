program minmax;
uses crt;
var
  t:array [1..10] of Integer ;
  i,n,max,min,s:Integer;
  moy:Real;
begin
  {lecture de la taille exacte}
  repeat 
    WriteLn('Donner la taille du tableau n<=10');
    ReadLn(n)
  until (n>0) and (n<=10);
  {lecture de l''element de t}
  for i:= 1 to n do
    begin 
      WriteLn('Entrer l''element de t[',i,']');
      ReadLn(t[i]);
    end;
  {initialisation}
  min:=t[1];
  max:=t[1];
  s:=0;
  for i:=1 to n do
    begin
      if max<t[i] then max:=t[i];
      if min>t[i] then min:=t[i];
      s:=s + t[i];
    end;
  moy:=s/n;
  WriteLn('Maximum=',max,' Minimum=',min,' Moyenne=',moy);
  readln;
end.
