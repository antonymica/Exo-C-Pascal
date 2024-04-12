program permute;
uses crt;
var a,b:Integer;
procedure permute(a,b:Integer);
var c:Integer;
  begin
    c:=a; a:=b; b:=c;
    WriteLn('a=',a, ' et b=',b);
  end ;
begin
  writeln('Donner deux entier');
  ReadLn(a,b);
  Writeln('a=',a,' et b=',b);
  WriteLn('Apres permute');
  permute(a,b);
  readln;
end.
