var a:array[1..10000] of integer;
   i,j,k,t,n:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  t:=0;
  for i:=1 to n-2 do
    for j:=i+1 to n-1 do 
      for k:=j+1 to n do 
        if a[i]+a[j]+a[k]=20 then
          t+=1;
  print(t);
end.
//6 4 100 10 70 100 6