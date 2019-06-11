var n,i,x,k,k26,k13,k2,k1:integer;
begin
  read(n);
  (k26,k13,k2,k1):=(0,0,0,0);
  for i:=1 to n do begin
    read(x);
    if x mod 26 = 0 then k26+=1
    else if x mod 13 = 0 then k13+=1
    else if x mod 2 = 0 then k2+=1
  end;
  k:=k13*k2+k26*(n-k26)+k26*(k26-1)div 2;
  writeln(k);
end.
    