program nombreparfait;
uses crt;
function parfait(x:Integer):Boolean ;
  var i,s:Integer;
  begin
    s:=0;
    for i:=1 to x div 2 do
      begin
        if x mod i = 0 then
        s:=s+1;
      end;
    if s=x then
    parfait:=true
    else
    parfait:=false;
  end;
var 
  a:Integer;
begin
  for a:=1 to 100 do
    begin
      if parfait(a) then
      WriteLn(a,' est parfait')
      else
      WriteLn(a,' n''est pas parfaite');
      
    end;
  readln;
end.
{Hotrany mbola tsy mety}
