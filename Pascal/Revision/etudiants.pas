program etudiants;
uses crt;
procedure relever();
var nb,i,num:integer; note,som:Real;
  begin
    write('Entrer le nombre d''etudiants: ');
    readln(nb);
    for i:=1 to nb do
      begin
        write('Le numero de l''etudiant: ');
        readln(num);
        som:=0;
        for i:=1 to 5 do
          begin
            write('Saisissez une note: ');
            readln(note);
            som:=som+note;
          end;
        writeln('La somme de sa note est: ',som);
      end;
  end;
begin
  relever();
  readln;
end.
