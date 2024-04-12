program trace;
uses crt;
var
  i,j,max,lmax,cmax,n,tr: integer;
  A: array[1..25,1..25] of integer;
begin
  
  repeat
    writeln('Taille de A[i,j]');
    readln(n);
  until (n>0) and (n<=25);
  
  for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          writeln('Element de A[',i,',',j,']');
          readln(A[i,j]);
        end;
    end;
    
    tr:=0;
    
    for i:=1 to n do
      begin
        tr:=tr + A[i,i];
      end;
    writeln('Trace=',tr);
      
    max:=A[1,1];
    
    for i:=1 to n do
      begin
        if max<A[i,i] then
          begin
            max:=A[i,i];
            cmax:=i;
            lmax:=i;
          end;
        if max<A[i,n+1-i] then
          begin
            max:=A[i,n+1-i];
            cmax:=n+1-i;
            lmax:=i;
          end;
      end;
    writeln('Max=',max,' Position ligne=',lmax,' Position colone=',cmax);
  
  readln;
end.
