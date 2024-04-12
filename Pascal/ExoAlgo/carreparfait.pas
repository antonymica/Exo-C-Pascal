program carreparfait;
uses crt;
var
   i,n:Integer;
   cp:Boolean ;
begin
  write('Enter the number: ');
  readln(n);
  cp:=false;
  i:=0;
  while (i<=n div 2) and (not cp) do
    begin
      if n=i*i then
        begin
          cp:=true;
        end;
      i:=i+1;
    end;
  if cp then
    begin
      writeln('Carre Parfait');
    end
  else
    begin
      writeln('Carre pas Parfait');
    end;
  readln;
end.
