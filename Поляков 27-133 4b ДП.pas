// |{(ai;aj)}|=?, где i<j & ai+aj>20
var s:array[1..20] of integer;
    i,j,k,n,x:integer;
begin
  for i:=1 to n do s[i]:=0;
  read(n);
  k:=0;
  for i:=1 to n do begin
    read(x);
    for j:=max(1,21-x) to 20 do 
      k+=s[j];
    s[min(x,20)]+=1;
  end;
  print(k);
end.