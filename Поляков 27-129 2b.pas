// Найти кол-во пар (ai-aj)%m=0 && (ai||aj>b) СтГр:29.04.20
// 6 40 100 10 70 100 50 => 3 (m=60, b=80)
// Найти кол-во пар (ai+aj)%m=0 && (ai||aj>b) СтГр:04.03.20
// 6 40 40 120 30 50 110 => 3 (m=80, b=50)
const m=80;b=50;
var a:array[1..10000] of integer;
    i,j,n,k:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-1 do 
    for j:=i+1 to n do
      if ((a[i]-a[j])mod m=0)and((a[i]>b) or (a[j]>b)) then k+=1;
  print(k);
end.