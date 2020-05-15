// Дано N x>0. Кол-во пар (j-i)>=4 && (a[i]+a[j])%2=0
// или (j-i)>=4 && (a[i]+a[j])%2=1
// или (j-i)=3 && (a[i]+a[j])%2=1
var b:array[1..4] of integer;
    i,j,k,k0,k1,n:integer;
begin
  read(n);
  (k0,k1):=(0,0);
  for i:=1 to 4 do read(b[i]);
  k:=(b[1]+b[4])mod 2;
  for i:=5 to n do begin
    if b[1] mod 2 = 0 then k0+=1 else k1+=1;
    for j:=1 to 3 do b[j]:=b[j+1];
    read(b[4]);
    k += k0+k1;
    if (b[1]+b[4])mod 2<>0 then k+=1;
  end;
  print(k);
end.