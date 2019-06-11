var n,i,j,k,f,maxs:integer;
    a:array[1..10000] of integer;
begin
  read(n); maxs:=0;
  for i:=1 to n do read(a[i]);
  for i:=1 to n-2 do if a[i]<>0 then begin
    f:=0;
    for j:=i+1 to n do 
      if a[j]=0 then f:=1
      else if (f=1)and((a[i]+a[j])mod 3=0) and (a[i]+a[j]>maxs) then 
        maxs := a[i]+a[j];
  end;
  writeln(maxs);
end.
// 7 1 0 2 0 5 0 8 => 9 