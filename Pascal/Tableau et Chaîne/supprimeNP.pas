program supprimeNP;
uses crt;

procedure  supprimenp(CH: String[250]; n,p:integer);
  var t,i: integer; chi: string[250];
  begin
    t:=sizeof(CH);
    if p<=t then
      begin
        chi:=''; {initialisation vide}
        for i:=1 to p-1 do
          begin
            chi[i]:=chi[i];{copier la partie avant p}
            {ajouter les caracteres apres les n a supprimer}
            if (p+n)>t then
              begin
                n:=t-p; {s'il reste moins de n caract, on sup tous}
              end;
            for i:=p-n to t do
              begin
                chi:=chi+CH[i];
              end;
            CH:=chi;
          end;
      end;
  end;
begin
  
    readln;
end.
