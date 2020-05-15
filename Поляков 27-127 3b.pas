// Дано N x>0. Кол-во пар 
// 1)(j-i)>=4 все!
// 2)(j-i)=3 && (a[i]+a[j])%2=1
var a:array[1..10000] of integer;
    i,j,k,n:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-3 do 
    k += (a[i]+a[i+3])mod 2 + n-i-3;
  print(k);
end.