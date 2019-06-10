var a,b,h,hmax:integer;
begin
  read(a,b);
  h:=0; hmax:=0;
  while b>0 do begin
    if a<b then begin
      h+=(b-a);
      if h>hmax then hmax:=h;
    end else
      h:=0;
    a:=b; read(b);
  end;
  writeln(hmax);
end.
// 1 2 3 1 2 3 4 1 2 3 4 5 1 2 0 => 4
// 5 6 5 4 3 2 1 2 3 2 3 4 5 6 7 8 0 => 6