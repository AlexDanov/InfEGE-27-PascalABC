var a:array[1..6] of integer;
    b:array[0..2] of integer;
    i,R:integer;
begin
  b[0]:=0;b[1]:=0;b[2]:=0;R:=0;
  for i:=1 to 5 do read(a[i]);
  while true do begin
    read(a[6]);
    if a[6]=0 then break;
    b[a[1] mod 3] := b[a[1] mod 3] + 1;
    if (a[6] mod 3 = 0) then R := R + b[0];
    if (a[6] mod 3 = 1) then R := R + b[2];
    if (a[6] mod 3 = 2) then R := R + b[1];
    for i:=1 to 5 do
      a[i] := a[i+1];
  end;
  writeln(R);
end.