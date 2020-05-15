var a:array[1..10000] of integer;
    i,j,maxS,n:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  maxS := -1001;
  for i:=1 to n do 
    for j:=1 to n do
      if (abs(i-j)>=5)and((a[i]-a[j])mod 3=0)
         and (a[i]-a[j]>maxS) then 
           maxS := a[i]-a[j];
  if maxS = -1001 then print('NO')
  else print(maxS);
end.