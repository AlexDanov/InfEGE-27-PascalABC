var a:array[1..10000] of integer;
    i,j,k,n:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if (a[i]>a[j])and(a[i]+a[j]<=34) then 
        k+=1;
  print(k);
end.
// 6 32 1 16 7 22 16