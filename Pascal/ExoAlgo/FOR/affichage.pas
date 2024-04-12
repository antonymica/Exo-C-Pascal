program affichage;
uses crt;
var l,col,nbc: integer;
    i:char;
begin
  nbc:=1;
  for l:=1 to 4 do
    begin
      for col:=1 to nbc do
        begin
          write('*');
        end;
      writeln;
      nbc:=nbc*2;
    end;
    writeln;
    writeln;
    writeln;
  
  for i:='a' to 'z' do
    begin
      write(i,' ');
    end;
  readln;
end.
