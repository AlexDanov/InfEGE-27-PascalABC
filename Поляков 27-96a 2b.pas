﻿var a:array[1..10000] of integer;
    n,i,j,k:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-5 do 
    for j:=i+5 to n do 
      if (a[i]+a[j])mod 3=0 then k+=1;
  writeln(k);
end.