program premier;
uses crt;
var
  i,n:integer;
  premier,fini:boolean;
begin
  write('Entrer le nombre: '); readln(n);
  premier:=true;
  fini:=false;
  i:=2;
  while(not fini) do
    begin
      if (n mod i=0) then
        begin
          premier:=false;
          fini:=true;
        end
       else
        begin
          i:=i+1;
          if (i>n div 2) then
            begin
              fini:=true;
            end;
        end;
    end;
    if premier then
      writeln(n,' est premier')
     else
      writeln(n,' n''est pas premier');
  readln;
end.
