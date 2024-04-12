program quotreste;
uses crt;
var a,b,q,r:Integer;
begin
  writeln('Donner deux nombre');
  ReadLn(a, b);
    q:=0; r:=a;
      while r>b do
        begin
          q:=q+1; r:=r-b;
        end;
  writeln('Le quotien de ',a,'/',b,' est: ',q,' et le reste de ',a,'/',b,' est: ',r);
  readln;
end.
