var n,i,j,k,f:integer;
    a:array[1..10000] of integer;
begin
  read(n); k:=0;
  for i:=1 to n do read(a[i]);
  for i:=1 to n-2 do if a[i]<>0 then begin
    f:=0;
    for j:=i+1 to n do 
      if a[j]=0 then f:=1
      else if f=1 then k+=1;
  end;
  writeln(k);
end.
// 7 1 2 0 3 0 4 5 => 8  