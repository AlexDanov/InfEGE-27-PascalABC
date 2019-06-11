var a:array[1..6,1..2] of integer;
    n,i,s,i1,i2,i3,i4,i5,i6,smax:integer;
begin
  smax:=0;  
  for i:=1 to 6 do read(a[i,1],a[i,2]);
  for i1:=1 to 2 do
  for i2:=1 to 2 do
  for i3:=1 to 2 do
  for i4:=1 to 2 do
  for i5:=1 to 2 do
  for i6:=1 to 2 do begin
    s:=a[1,i1]+a[2,i2]+a[3,i3]+a[4,i4]+a[5,i5]+a[6,i6];
    if (s mod 3<>0)and(s>smax) then smax:=s;
  end;
  writeln(smax);  
end.
// 1 3  5 12  6 9  5 4  3 3  1 1 => 32