var a:array[1..10000] of integer;
    i,j,maxS,n:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  maxS := -1001;
  for i:=1 to n-5 do 
    for j:=i+5 to n do
      if ((a[i]-a[j])mod 3=0)
         and (abs(a[i]-a[j])>maxS) then 
           maxS := abs(a[i]-a[j]);
  if maxS = -1001 then print('NO')
  else print(maxS);
end.