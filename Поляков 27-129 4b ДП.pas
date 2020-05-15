// Найти кол-во пар (ai-aj)%m=0 && (ai||aj>b) СтГр:29.04.20
// 6 40 100 10 70 100 50 => 3 (m=60, b=80)
// Найти кол-во пар (ai+aj)%m=0 && (ai||aj>b) СтГр:04.03.20
// 6 40 40 120 30 50 110 => 3 (m=80, b=50)
const m=60;b=80;
var s,t:array[0..m-1] of integer;// s: x>b; t: x<=b; L
    i,n,x,k,p:integer;
begin
  for i:=0 to m-1 do (s[i],t[i]):=(0,0);
  read(n); k:=0;
  for i:=1 to n do begin
    read(x); //R
    p := x mod m;  
    if x>b then k+=t[p];
    k+=s[p];
    if x>b then s[p]+=1 else t[p]+=1;
  end;
  print(k);
end.