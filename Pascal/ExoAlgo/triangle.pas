program triangle;
uses crt;
var
  k,n,e,i:Integer;
  Et: array[1..100] of char;
  Pl: array[1..50] of char;
begin
  Clrscr;
  
  WriteLn('TRIANGLE');
  e:=40;
  
  for i:=1 to e do
    begin
      Et[i]:='*';
    end;
  for i:=1 to e do
    begin
      Pl[i]:='+';
    end;

repeat 

repeat 
  for i:=1 to e do
   begin
    textcolor(blue);
    write(Et[i]);
    
   end;
  for i:=1 to 3 do
    write(Et[i]);  
  writeln();
 
  
  for i:=1 to e do
    begin
      k:=0;
      repeat
        k:=k+1;
        write(Et[k]);
        textcolor(yellow);
        while i<=e do
          begin
            write(Pl[i]);
            i:=i+1;
          end;
        textcolor(blue);
        write(Et[k]); 
        
        break ;
      until (k=e);
      WriteLn();
    end;
    
  writeln(Et[1],Et[2]);
  WriteLn(Et[1]);
e:=e-1; 
until(e=0);

repeat 
  for i:=1 to e do
   begin
    textcolor(white);
    write(Et[i]);
   end;
  for i:=1 to 3 do
    write(Et[i]); 
  writeln();
  
  for i:=1 to e do
    begin
      k:=0;
      repeat
        k:=k+1;
        write(Et[k]);
        while i<=e do
          begin
          textcolor(blue);
            write(Pl[i]); 
            
            i:=i+1;
          end;
        textcolor(white);
        write(Et[k]); 
       
        break ;
      until (k=e);
      WriteLn();
    end;
    
  writeln(Et[1],Et[2]);
  WriteLn(Et[1]);
e:=e+1; 
until(e=40);
until(e=0);

  ReadLn();
end.
