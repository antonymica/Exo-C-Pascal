program major;
uses crt;
Var name:String;
Var old, born, year:Integer;
begin
  WriteLn('Enter your name please');
  readln(name);
  WriteLn('Hello ',name);
  WriteLn('When was you born? ');
  ReadLn(born);
  WriteLn('What is the actual year ' ,name, '?');
  ReadLn(year);
  old := year - born;
  WriteLn('You are ',old,' old');
  If old<18 then
  WriteLn('You are Minor')
   else 
  WriteLn('You are Major');
  ReadLn()
  
end.
