var n,i,x,k,k26,k13,k2,k1:integer;
begin
  (k26,k13,k2,k1,k):=(0,0,0,0,0);
  read(n,x);
  for i:=2 to n do begin
    if x mod 26 = 0 then k26+=1
    else if x mod 13 = 0 then k13+=1
    else if x mod 2 = 0 then k2+=1
    else k1+=1;
    read(x);
    if x mod 26 = 0 then k+=k13+k2+k1
    else if x mod 13 = 0 then k+=k2
    else if x mod 2 = 0 then k+=k13;
    k1+=k26;
  end;
  writeln(k);
end.
// 4 2 6 13 39 => 4    