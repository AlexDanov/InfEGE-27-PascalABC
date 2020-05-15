// Найти кол-во пар (ai-aj)%m=0 && (ai||aj>b) СтГр:29.04.20
// 6 40 100 10 70 100 50 => 3 (m=60, b=80)
// Найти кол-во пар (ai+aj)%m=0 && (ai||aj>b) СтГр:04.03.20
// 6 40 40 120 30 50 110 => 3 (m=80, b=50)
const m=60;b=80;
begin
  var(s,t):=(Arr(0)*m,Arr(0)*m);
  var k:=0;
  loop readInteger() do begin
    var x := readInteger; //R
    if x>b then k+=t[x mod m];
    k+=s[x mod m];
    if x>b then s[x mod m]+=1 else t[x mod m]+=1;
  end;
  print(k);
end.