program SHexiste;
uses crt;

function shexiste(SH,CH: String[250]): boolean;
  var t,ts,i,j,k: integer; ex: boolean;
  begin
    t:=sizeof(CH); ts:=sizeof(SH); ex:=false;
    if t>=ts then
      begin
        i:=1;
        while (i<=(t-ts+1)) and (not ex) do
          begin
            j:=i; k:=1; ex:=true;
              while (k<=ts) and (ex) do
                begin
                  if CH[j]<>SH[k] then
                   begin
                    ex:=false;
                   end;
                  j:=j+1; k:=k+1;
                end;
              i:=i+1;
          end;
      end;
    shexiste:=ex;
  end;
  
begin
  
  readln;
end.
