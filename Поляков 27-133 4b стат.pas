// |{(ai;aj)}|=?, где i<j & ai+aj>20
var s:array[1..20] of integer;
    i,j,k,n,x:integer;
begin
  for i:=1 to n do s[i]:=0;
  read(n);
  for i:=1 to n do begin
    read(x);
    s[min(x,20)]+=1;
  end;
  k:=s[20]*(n-s[20])+s[20]*(s[20]-1) div 2;
  // 2-19, 3-18;19 4-17;18;19 ... 9-12;13..19 10-11;12;13.. 11,12..19
  for i:=2 to 19 do 
    for j:=max(i+1,21-i) to 19 do
      k += s[i]*s[j];
  for i:=11 to 19 do 
    k += s[i]*(s[i]-1) div 2;
  print(k);
end.