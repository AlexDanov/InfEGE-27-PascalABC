var n,i,x,y,h,minx,maxx:integer;
begin
  read(n);
  (minx,maxx,h) := (100000,-100000,0);
  for i:=1 to n do begin
    read(x,y);
    if y=0 then begin
      if x<minx then minx := x;
      if x>maxx then maxx := x;
    end
    else if h<abs(y) then h := abs(y);
  end;
  if minx = 100000 then writeln(0)
  else writeln((maxx-minx)*h / 2);
end.