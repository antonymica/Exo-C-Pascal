program equation;
uses crt;
function degre1(a: integer; b:Integer): real;
  begin
    degre1:=(-b)/a;
  end;
procedure  degre2(a:Integer; b:Integer; c:Integer);
 var
    delta,x1,x2: Real;
  begin
    delta:=(b*b) - (4*a*c);
    if delta = 0 then
      begin
        x1:= -b / (2*a); x2:= -b / (2*a);
        writeln('x1 = ',x1);
        writeln('x2 = ',x2);
      end
    else if delta > 0 then
            begin
              x1:=(-b+Sqrt(delta)) / (2*a);
              x2:=(-b-Sqrt(delta)) / (2*a);
              writeln('x1 = ',x1);
              writeln('x2 = ',x2);
            end
         else
            begin
              writeln('Solution complex!!!');
            end;
  end;
var
  a,b,c,x: integer;
  rep: char;
begin
Clrscr;
GOTOXY(18,10);
  writeln('SYSTEME D''EQUATION');
  WriteLn();
  writeln('Forme: ');
  writeln();
  writeln('1er degree: ax + b = 0 ');
  writeln('2nd degree: ax² + bx + c = 0 ');
  writeln('Veillez choisir ‡‡');
  writeln();

  repeat
    write('1er Degree (0) | 2nd Degree (1): ');
    readln(x);
  until(x=0) or (x=1);
  if x=0 then
    begin
      write('a = '); readln(a);
      write('b = '); readln(b);
      writeln('Solution: x = ',degre1(a,b));
    end
  else if x=1 then
         begin
           write('a = '); readln(a);
           write('b = '); readln(b);
           write('c = '); readln(c);
           degre2(a,b,c);
         end;

  readln;
end.
