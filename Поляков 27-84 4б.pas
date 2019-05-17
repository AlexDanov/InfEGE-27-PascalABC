var i,a,r,s:integer;
    m:array[0..1,0..1] of integer=((0,0),(0,0));
begin
  read(a);
  while a<>0 do begin
    (r,s) := (a mod 2,sign(a mod 5));
    if a>m[r,s] then m[r,s] := a;
    read(a);
  end;
  if (m[0,0]*m[1,0]>m[0,0]*m[1,1]) and (m[0,0]*m[1,0]>m[1,0]*m[0,1]) then  writeln(m[0,0],' ',m[1,0])
  else if m[0,0]*m[1,1]>m[1,0]*m[0,1] then writeln(m[0,0],' ',m[1,1])
  else if m[1,0]*m[0,1]<>0 then writeln(m[1,0],' ',m[0,1])
  else writeln(0);
end.
        