program matricesomcol;
uses crt;
var
  i,j,n,m,jmin,jmax,x: integer;
  A: array[1..20,1..30] of integer;
  som: array[1..30] of integer;
begin
  repeat
    writeln('Taille ligne i de A[i,j]');
    readln(n);
  until (n>0) and (n<=20);
  
  repeat 
    writeln('Taille du colone j de A[i,j]');
    readln(m);
  until (m>0) and (m<=30);
  
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          writeln('Element de A[',i,',',j,']');
          readln(A[i,j]);
        end;
    end;
    
    for j:=1 to m do
      begin
        som[j]:=0;
        for i:=1 to n do
          begin
            som[j]:=som[j] + A[i,j];
          end;
      end;
  for j:=1 to m do
    begin
      writeln('Som[',j,']=',som[j]);
    end;
  
  jmin:=som[1];
  jmax:=som[1];
  
  for j:=1 to m do
    begin
      if som[jmax]<som[j] then
        begin
          jmax:=j;
        end;
      if som[jmin]>som[j] then
        begin
          jmin:=j;
        end;
    end;
    
  writeln('Position jmin=',jmin,' jmax=',jmax);
  
  if jmin>jmax then
    begin
      for i:=1 to n do
        begin
          x:=A[i,jmin];  A[i,jmin]:=A[i,jmax];
          A[i,jmax]:=x;
        end;
    end;
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          writeln('A[',i,',',j,']=',A[i,j]);
        end;
    end;
  
  readln;
end.
