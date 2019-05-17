var x,n,i,j,k,k1,k2,k13,k26:integer;
    b:array[1..5] of integer;
begin
  read(n);
  (k,k1,k2,k13,k26):=(0,0,0,0,0);
  for i:=1 to 5 do read(b[i]);
  for i:=6 to n do begin
    if b[1] mod 26 = 0 then k26+=1
    else if b[1] mod 13 = 0 then k13+=1 
    else if b[1] mod 2 = 0 then k2+=1
    else k1+=1;
    for j:=1 to 4 do b[j]:=b[j+1];
    read(b[5]);
    if b[5] mod 26 = 0 then k+=k1+k13
    else if b[5] mod 13 = 0 then k+=k26+k2
    else if b[5] mod 2 = 0 then k+=k13
    else k+=k26;
  end;
  writeln(k);
end.
    