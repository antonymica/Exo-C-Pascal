program fusion2;
uses crt;
var
  A:array[1..10] of integer;
  B:array[1..15] of integer;
  C:array[1..25] of integer;
  i,j,k,n,m:integer;
begin
  repeat 
    writeln('Entrer la taille exacte du vecteur A (n<=10)');
    readln(n);
  until (n>0) and (n<=10);
  repeat
    writeln('Entrer la taille exacte du vecteur B (n<=15)');
    readln(m);
  until (m>0) and (m<=15);
  for i:=1 to n do
    begin
      writeln('Saisir l''element de A[',i,']');
      readln(A[i]);
    end;
  for i:=1 to m do
    begin
      writeln('Saisir l''element de B[',i,']');
      readln(B[i]);
    end;
  {traitement du 1ere element}
  if A[1]<B[1] then
      begin
        C[1]:=B[1];
        i:=2; j:=1;
      end
    else
      begin
        C[1]:=B[1];
        j:=2; i:=1;
      end;
  k:=2;
  while (i<=n) and (j<=m) do
     begin
       if A[i]<B[j] then
         begin
           if C[k]<>C[k-1] then
             begin
               C[k]:=A[i];k:=k+1;
             end;
           i:=i+1;
         end
        else
          begin
            if C[k]<>C[k-1] then
              begin
                C[k]:=B[j]; k:=k+1;
              end;
            j:=j+1;
          end; 
     end;
  if i>n then
    begin
      for i:=j to m do
        begin
          if C[k]<>C[k-1] then
            begin
              C[k]:=B[i]; k:=k+1;
            end;
        end;
    end;
  if j>m then
    begin
      for j:=i to n do
        begin
          if C[k]<>C[k-1] then
            begin
              C[k]:=A[j]; k:=k+1;
            end;
        end;
    end;
  writeln('Apres fusion des deux vecteur A et B, on a:');
  for i:=1 to k-1 do
    begin
      writeln('C[',i,']=',C[i]);
    end;
  readln;
end.
