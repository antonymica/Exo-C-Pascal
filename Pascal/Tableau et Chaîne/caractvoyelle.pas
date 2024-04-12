program caractvoyelle;
uses crt;
var
  i,n: integer;
  CH,PH: String [200];
  C: Char;

function presence(CH:String[200];C:Char): boolean;
  var
    t,i: integer;
    pr: boolean;
  begin
    t:=SizeOf(CH);
    pr:=false;
    i:=1;
    while (i<=t) and not pr do
      begin
        if CH[i]=C then
          begin
            pr:=true;
          end;
        i:=i+1;
      end;
    presence:=pr;
  end;

function nbvoyelle(CH:String[200]):integer;
  var t,i,nbv: integer;
  begin 
    t:=sizeof(CH);
    nbv:=0;
    for i:=1 to t do
      begin
        case CH[i] of
            'a','i','e','o','u','y': nbv:=nbv+1;  
      end;
    nbvoyelle:=nbv;
  end;
  
function touvoyelle(PH: string[200]): boolean;
  var t,i: integer; cv: String[6];
  begin
    t:=sizeof(PH);
    cv:='aeiouy';
    for i:=1 to t do
      begin
        case PH[i] of
          'a':cv[1]:='X';
          'e':cv[2]:='X';
          'i':cv[3]:='X';
          'o':cv[4]:='X';
          'u':cv[5]:='X';
          'y':cv[6]:='X';
      end;
    if cv='XXXXXX' then
        touvoyelle:=true
     else
        touvoyelle:=false;   
  end; {eto misy tsy mety}
  
begin
  writeln('Entrer une phase quelconque');
  readln(CH);
  writeln('Quelle voyelle voulez vous trouver?');
  readln(C);
  if presence(CH,C) then
    begin
      writeln('Le caractere ',C,' existe dans la phase: ');
      writeln(CH);
    end
   else
    begin
      writeln(C,' n''existe pas dans la phrase: ');
      writeln(CH);
    end;
    
   write('Le nombre de voyelle dans cette phrase est: ');
   writeln(nbvoyelle(CH));
   
   writeln('Entrer une autre phrase svp');
   readln(PH);
   
   if touvoyelle(PH) then
     begin
       writeln('Cette phrase: ',PH,' contient tout les voyelles');
     end
    else
     begin
       writeln(PH,' ne contient pas tout les voyelles');
     end;
  
  readln;
end.
