program facture;
uses crt;
const p1=2; p2=1.5; p3=1;
var 
    mont: Real;
    nbc: Integer;
begin
  WriteLn('Donner le nombre de photocopie');
  ReadLn(nbc);
    if nbc<=10 then 
      mont:=p1*nbc
      else if nbc<=30 then
        mont:=p1*10+p2*(nbc-30)
        else 
          mont:=p1*10+p2*20+p3*(nbc-30);
  WriteLn('Le montant a payer est: ' ,mont);
  readln;
end.
