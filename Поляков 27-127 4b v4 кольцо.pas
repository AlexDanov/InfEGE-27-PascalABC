// Дано N x>0. Кол-во пар (j-i)>=4 && (a[i]+a[j])%2=0
// или (j-i)>=4 && (a[i]+a[j])%2=1
// или (j-i)=3 && (a[i]+a[j])%2=1
var b:array[1..4] of integer;
    i,j,k,n:integer;
begin
  read(n);
  for i:=1 to 3 do read(b[i]);
  k := (n-3)*(n-4)div 2;
  for i:=4 to n do begin
    read(b[4]);
    k+=(b[1]+b[4])mod 2;
    for j:=1 to 3 do b[j]:=b[j+1];
  end;
  print(k);
end.
