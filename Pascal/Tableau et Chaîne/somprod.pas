program somprod;
uses crt;
var
  t1,t2,t3: array[1..20] of Integer ;
  i,n,ps:Integer;
begin
  repeat 
    writeln('Enter the tail of the array (n<20)');
    readln(n);
  until (n>0) and (n<20);
  for i:=1 to n do
    begin
      writeln('Enter element of t1[',i,']');
      ReadLn(t1[i]);
    end;
  for i:=1 to n do
    begin
      writeln('Enter element of t2[',i,']');
      readln(t2[i]);
    end;
  ps:=1;
  for i:=1 to n do
    begin
      t3[i] := t1[i]+t2[i];
      ps:=ps+t1[i]*t2[i];
    end;
  writeln('Produit scalaire=',ps);
  writeln('Som of array');
  for i:=1 to n do
    begin
      WriteLn('t3[',i,']=',t3[i]);
    end;
  readln;
end.
