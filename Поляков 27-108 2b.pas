var a:array[1..10000] of integer;
    i,j,k,n,f:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k := 0;
  for i:=1 to n-2 do 
    if a[i]>0 then begin
      for j:=i+1 to n do 
        if a[j]=0 then break;
      for j:=j+1 to n do
        if (a[j]>0)and((a[i]+a[j]) mod 3=0) then
          k+=1;
  end;
  print(k);
end.
// 10 1 2 0 3 4 0 5 6 0 7 => 6