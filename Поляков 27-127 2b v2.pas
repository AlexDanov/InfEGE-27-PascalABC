// Дано N x>0. Кол-во пар 
// 1)(j-i)>=4 && (a[i]+a[j])%2=0
// 2)(j-i)>=3 && (a[i]+a[j])%2=1
var a:array[1..10000] of integer;
    i,j,k,n:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-1 do
    for j:=i+3 to n do
      if ((a[i]+a[j])mod 2<>0) or
         (j-i>=4) and ((a[i]+a[j])mod 2=0) then
           k+=1;
  print(k);
end.