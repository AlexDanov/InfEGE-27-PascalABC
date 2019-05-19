var i,n,x,R,mc,mn:integer;
begin
  read(n);
  mc:=0; mn:=0;
  for i:=1 to n do begin
    read(x);
    if (x mod 2 = 0) and (x>mc) then mc:=x;
    if (x mod 2 <>0) and (x>mn) then mn:=x;
  end;
  if mc*mn>0 then R := mc+mn
  else R := -1;
  writeln(R);
end.
    