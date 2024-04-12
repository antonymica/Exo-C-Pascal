program saison;
uses crt;
var m: Integer;
begin
  WriteLn('Donner un numero du mois demande 1--12');
  repeat 
    ReadLn(m);
  until (m>0) and (m<13);
  case m of
      3,4,5:Write('La saison est: PRINTEMPS');
      6,7,8:Write('La saison est: ETE');
      9,10,11:write('La saison est: AUTOMNE');
      12,1,2:Write('La saison est: HIVER');
   end ;
  readln;
end.
