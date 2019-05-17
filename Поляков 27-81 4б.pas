var x,n,i,j,k,k1,k2,k13,k26:integer;
    b:array[0..4] of integer;
begin
  read(n);
  (k,k1,k2,k13,k26):=(0,0,0,0,0);
  for i:=0 to 4 do read(b[i]);
  for i:=5 to n-1 do begin
    j:=i mod 5;
    if b[j] mod 26 = 0 then k26+=1
    else if b[j] mod 13 = 0 then k13+=1 
    else if b[j] mod 2 = 0 then k2+=1
    else k1+=1;
    read(b[j]);
    if b[j] mod 26 = 0 then k+=k1+k13
    else if b[j] mod 13 = 0 then k+=k26+k2
    else if b[j] mod 2 = 0 then k+=k13
    else k+=k26;
  end;
  writeln(k);
end.
    