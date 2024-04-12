program supidem;
uses crt;

type 
  vect=array[1..10] of integer;
  matrice=array[1..10,1..15] of integer;
  
var
  v1,v2: vect;
  A: matrice;
  i,j,k,n,m: integer;

function identique(v1,v2:vect; n,m:integer):boolean;
  var
    i: integer;
    idem: boolean;
  begin
    if n<>m then
      begin
        idem:=false;
      end
     else
      begin
        idem:=true; 
      end;
    i:=1;
    while (i<=n) and (idem) do
      begin
        if v1[i]<>v2[i] then
          begin
            idem:=false;
          end;
      end;
    identique:=idem;
  end;
begin
  repeat
    writeln('Taille de ligne n de A[i,j]');
    readln(n);
  until (n>0) and (n<=10);
  
  repeat 
    writeln('Taille de colone m de A[i,j]');
    readln(m);
  until (m>0) and (m<=15);
  
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          writeln('A[',i,',',j,']');
          readln(A[i,j]);
        end;
    end;
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          writeln('A[',i,',',j,']=',A[i,j]);
        end;
    end;
  writeln('Element d''un vecteur de taille N');
  for i:=1 to n do
    begin
      writeln('V1[',i,']');
      readln(v1[i]);
    end;
  for i:=1 to n do
    begin
      writeln('V1[',i,']=',v1[i]);
    end;
  
    {localiser colonnes identique à v1 et les supprimer}
    
  j:=1;
  
  while j<=m do
    begin
      {recuperer la colonne dans v2}
      for i:=1 to n do
        begin
          v2[i]:=A[i,j];
        end;
      
      if identique(v1,v2,n,n) then {les deux vecteur ont la meme dim}
        begin
          {suppression de la colonne j qui a decaler les colonnes de droites}
          for i:=1 to n do
            begin
              for k:=1 to m-1 do
                begin
                  A[i,k]:=A[i,k+1];
                end;
            end;
          m:=m-1;
          {diminuer le nombre de colonne sans
          passer à la colonne suivant,car la colone
          decalee peut etre aussi identique a v1}
        end
       else
        begin  
          j:=j+1;
        end;
    end;
    for i:=1 to n do
      begin
        for j:=i to n do
          begin
            writeln('A[',i,',',j,']=',A[i,j]);
          end;
        writeln('V1[',i,']=',v1[i],' et V2[',i,']=',v2[i]);
      end;
  
  readln;
end.
