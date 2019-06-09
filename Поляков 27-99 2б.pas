var a:array[1..10000] of integer;
    n,i,j,k:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-1 do 
    for j:=i+1 to n do 
      if ((a[i]+a[j])mod 3 =0) and ((i-j)mod 3=0) then k+=1;
  writeln(k);
end.
// 10 1 2 3 4 5 6 7 8 9 10 => 3