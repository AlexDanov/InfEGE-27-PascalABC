var n,i,j,k,f:integer;
    a:array[1..10000] of integer;
begin
  read(n); k:=0;
  for i:=1 to n do read(a[i]);
  for i:=1 to n-2 do if a[i]<>0 then begin
    f:=0;
    for j:=i+1 to n do 
      if a[j]=0 then f:=1
      else if (f=1)and((a[i]+a[j])mod 3=0) then k+=1;
  end;
  writeln(k);
end.
// 10 1 2 0 3 4 0 5 6 0 7 => 6  