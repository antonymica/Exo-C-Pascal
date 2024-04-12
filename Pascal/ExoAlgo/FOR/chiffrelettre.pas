program chiffrelettre;
uses crt;
Var
  n:Integer;
begin
repeat 
  WriteLn('Write number n < 9');
  ReadLn(n);
    if n > 9 then
    begin 
      WriteLn('Your number' ,n ,'>',9);
      WriteLn('Rewrite please!');
    end
until n <= 9
  ;case n of
   0: WriteLn('zero');
   1: WriteLn('one');
   2: WriteLn('two');
   3: WriteLn('three'); 
   4: WriteLn('four'); 
   5: WriteLn('five');
   6: WriteLn('six');
   7: WriteLn('seven');
   8: WriteLn('eight');
   9: WriteLn('nine');
  end;
  readln;
end.
