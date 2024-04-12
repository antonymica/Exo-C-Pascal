program dichotomie;
uses crt;
var erreur,x1,x2,xmilieu: real;
begin
  x1:=2; x2:=3;
  erreur:=2;
  while (erreur>0.001) do
    begin
      xmilieu:=(x1+x2)/2;
      if (ln(xmilieu)>1/xmilieu) then
        begin
          x2:=xmilieu;
        end
       else
        begin
          x1:=xmilieu;
        end;
      erreur:=abs(x2-x1);
    end;
  writeln('L''absice d''intersection est, à 0.001 près ',xmilieu:5:3);
  readln;
end.
