var a:array[1..10000] of integer;
    i,j,n,iL,iR,maxS:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  (iL,iR):=(2,2);
  for i:=3 to n-1 do begin
    if a[i]<a[iL] then iL := i;
    if a[i]=a[iL] then iR := i;
  end;
  maxS := 0;
  for i:=1 to iL-1 do
    for j:=iR+1 to n do
      if a[i]+a[j]>maxS then
        maxS := a[i]+a[j];
  print(maxS);
end.