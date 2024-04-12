program matrice;
uses crt;
var
  i,j,n,m,v,nbv,x,z: integer;
  existe: boolean;
  A: array[1..20,1..30] of integer;
  B: array[1..20,1..30] of char;
  AT: array[1..20,1..30] of integer;

begin

  repeat
    writeln('Taille de la ligne n');
    readln(n);
  until (n>0) and (n<=20);
  
  repeat
    writeln('Taille du colone m');
    readln(m);
  until (m>0) and (m<=30);
  
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          writeln('A[',i,',',j,']');
          readln(A[i,j]);
        end;
    end;
  
  writeln('Donner la valeur à rechercher');
  readln(v);
  
  existe:=false; i:=1;
  
  while (i<=n) and (not existe) do
    begin
      j:=1;
      while (j<=m) and (not existe) do
        begin
          if A[i,j]=v then
            begin
              existe:=true;
            end;
          j:=j+1;
        end;
      i:=i+1;
    end;
  if existe then
    begin
      writeln(v,' existe');
    end
   else
    begin
      writeln(v,' non trouver');
    end;
    
    {voyelle dans B}
    
    nbv:=0;
    
    repeat
      writeln('Taille de la ligne de B');
      readln(x);
    until (x>0) and (x<=20);
    
    repeat
      writeln('Taille du colone de B');
      readln(z);
    until (z>0) and (z<=30);
    
    for i:=1 to x do
      begin
        for j:=1 to z do
          begin
            writeln('Saisir les caractères dans B[',x,',',z,']');
            readln(B[x,z]);
          end;
      end;
    for i:=1 to x do
      begin
        for j:=1 to z do
          begin
            case B[x,z] of
              begin
                'a','e','i','o','u','y': nbv:=nbv+1;
              end;
          end;
      end;
      
  writeln('Le nombre de voyelle dans B est: ',nbv);
  readln;
  
end.