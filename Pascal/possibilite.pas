program possibilite;
uses crt;

procedure affiche(mot: String; n: Integer);
  var i: integer; tmp: array[1..16] of char;
  begin
    for i:=1 to n do
      begin
        for i:=1 to n do write(mot[i]);
        Write('  ');
        for i:=1 to n do tmp[i]:=mot[i];
        for i:=2 to n do mot[i-1]:=tmp[i];
        mot[n]:=tmp[1];
      end;
    WriteLn();
  end;  //Ça fait: mica icam cami amic//
  
var
  mot,garde,garde2:String;
  ch:Char;
  n,i,j:Integer;
    
begin
  writeln('Quels sont les caractères?');
  write('Ce sont: ');
  ReadLn(mot);
  
  garde:=mot;
  garde2:=mot;
  n:=Length(mot);
 
  for i:=2 to n do
    begin
      affiche(mot,n);
      
      ch:=garde[i]; 
      garde[i]:=garde[i+1];
      garde[i+1]:=ch;
 
      mot:=garde;
    end;
  for i:=n downto 1do
    begin
      ch:=garde2[i]; 
      garde2[i]:=garde2[i-1];
      garde2[i-1]:=ch;
    end;
    
  WriteLn(garde2);
  readln;
end.
