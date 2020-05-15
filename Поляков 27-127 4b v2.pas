// Дано N x>0. Кол-во пар (j-i)>=4 && (a[i]+a[j])%2=0
// или (j-i)>=4 && (a[i]+a[j])%2=1
// или (j-i)=3 && (a[i]+a[j])%2=1
var b:array[0..3] of integer;
    i,j,k,n,x:integer;
begin
  read(n);
  for i:=0 to 2 do read(b[i]);
  for i:=3 to n-1 do begin
    read(b[3]);
    k+=(b[0]+b[3]) mod 2;
    for j:=0 to 2 do b[j]:=b[j+1];
  end;
  n := n-3;
  k += n*(n-1)div 2;
  print(k);
end.