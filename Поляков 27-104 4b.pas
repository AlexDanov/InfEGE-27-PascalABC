var b:array[0..4] of integer;
    i,j,n,maxS,p:integer;
    max,min:array[0..2] of integer;
begin
  for i:=0 to 2 do (min[i],max[i]):=(1001,0);
  read(n); maxS := -1001;
  for i:=0 to 4 do read(b[i]);
  for i:=5 to n-1 do begin
    p := b[0] mod 3;
    if b[0]>max[p] then max[p] := b[0];
    if b[0]<min[p] then min[p] := b[0];
    for j:=0 to 3 do b[j]:= b[j+1];
    read(b[4]);
    p := x mod 3;
    if (max[p]>0)and(max[p]-b[4]>maxS) then maxS := max[p]-b[4];
    if (min[p]<1001)and(b[4]-min[p]>maxS) then maxS := b[4]-min[p];
  end;
  if maxS = -1001 then print('NO')
  else print(maxS)
end.