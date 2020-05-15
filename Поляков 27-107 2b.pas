var a:array[1..10000] of integer;
    i,j,n,k,f:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-1 do 
    if a[i]>0 then begin
      j:=i+1;
      while (j<=n)and(a[j]>0) do j+=1;
      for j:=j+1 to n do
        if a[j]>0 then k+=1;
    end;
  print(k);
end.














