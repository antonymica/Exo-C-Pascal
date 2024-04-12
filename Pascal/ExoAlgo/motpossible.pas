program motpossible;
uses crt;
var
  let: array [1..3] of char;
  i,j: Integer;
  x: Char;
begin
  let[1]:='a'; let[2]:='b'; let[3]:='c';
  j:=1;
  repeat
    for i:=1 to 3 do
      begin
        for i:=1 to 3 do
          write(let[i]);
        WriteLn();
        x:=let[1]; let[1]:=let[2]; let[2]:=let[3];
    let[3]:=x;
      end;
    x:=let[1]; let[1]:=let[2]; let[2]:=let[3];
    let[3]:=x;
    j:=j+1;
  until (j=3);
    
  readln;
end.
