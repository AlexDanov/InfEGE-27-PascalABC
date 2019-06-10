var a,b,h0,h,hmax:integer;
begin
  read(a,b);
  h0 :=a; h:=0; hmax:=0;
  while b>0 do begin
    if a<b then begin
      h:=b-h0;
      if h>hmax then hmax:=h;
    end else
      h0:=b;
    a:=b; read(b);
  end;
  writeln(hmax);
end.
// 5 6 5 4 3 2 1 2 3 2 3 4 5 6 7 8 0