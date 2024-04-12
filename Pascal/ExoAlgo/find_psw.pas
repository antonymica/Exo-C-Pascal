program find_psw;
uses crt;
function fact(nb:Integer):LongInt ;
  var i:Integer;
  begin
    fact:=1;
    for i:=1 to nb do
      begin
        fact:=fact*i;
      end;
  end;
var  
  mot,garde:String;
  x:array[1..16] of Char;
  ch:Char;
  f,n,i,j:Integer;
begin
  writeln('Quels sont les caractères?');
  write('Ce sont: ');
  ReadLn(mot);
  
  garde:=mot;
  n:=Length(mot);
  j:=1;
  f:=fact(n);
  
  repeat 
    for i:=1 to n do
      begin
        for i:=1 to n do
          write(mot[i]);
          write('  ');
        for i:=1 to n do
          begin
            x[i]:=mot[i];
          end;
        for i:=2 to n do
          mot[i-1]:=x[i];
        mot[n]:=x[1];
      end;
      WriteLn();
  //Tapitra eto ny cycle iray
    ch:=mot[j]; mot[j]:=mot[j+1]; mot[j+1]:=ch;
    j:=j+1;
  until(j=n);
  
  readln;
end.
