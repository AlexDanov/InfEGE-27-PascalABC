var a:array[1..5,0..1] of integer;
    b:array[1..5] of integer;
    i,i1,i2,i3,i4,i5,L,Lmax:integer;
begin
  Lmax:=1;
  for i:=1 to 5 do read(a[i,0],a[i,1]);
  for i1:=0 to 1 do 
  for i2:=0 to 1 do
  for i3:=0 to 1 do
  for i4:=0 to 1 do
  for i5:=0 to 1 do begin
    (b[1],b[2],b[3],b[4],b[5]):=(i1,i2,i3,i4,i5);
    L := 1;
    for i:=2 to 5 do 
      if a[i-1,1-b[i-1]] = a[i,b[i]] then begin
        L += 1;
        if L>Lmax then Lmax:=L;
      end else L:=1;
  end;
  print(Lmax);
end.
// 1 2  2 3  5 4  5 5  5 1 => 3