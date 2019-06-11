var n,i,x,k,k14,k7,k2,k1:integer;
begin
  read(n);
  (k14,k7,k2,k1):=(0,0,0,0);
  for i:=1 to n do begin
    read(x);
    if x mod 14 = 0 then k14+=1
    else if x mod 7 = 0 then k7+=1
    else if x mod 2 = 0 then k2+=1
    else k1+=1;
  end;
  k:=(k7*(k7-1)+k2*(k2-1)+k1*(k1-1))div 2+k1*(k7+k2);// %14!=0
  writeln(k);
  k:=k7*k2+k14*(n-k14)+k14*(k14-1)div 2; // %14=0
  writeln(n*(n-1)div 2 - k);
end.
    