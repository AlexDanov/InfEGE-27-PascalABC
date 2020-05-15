// |{(ai;aj)}|=?, где i<j & ai+aj>20
type int=integer;
const m = 20;
var a:array[1..10000] of int;
    i,j,k,n:int;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if a[i]+a[j]>m then
        k+=1;
  print(k);
end.