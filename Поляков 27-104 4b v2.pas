var b:array[0..4] of integer;
    i,j,n,maxS,p:integer;
    max,min:array[0..2] of integer;
begin
  for i:=0 to 2 do (min[i],max[i]):=(5001,-5001);
  read(n); maxS := -1001;
  for i:=0 to 4 do read(b[i]);
  for i:=5 to n-1 do begin
    j := i mod 5;
    p := b[j] mod 3;
    if b[j]>max[p] then max[p] := b[j];
    if b[j]<min[p] then min[p] := b[j];
    read(b[j]);
    p := b[j] mod 3;
    if max[p]-b[j]>maxS then maxS := max[p]-b[j];
    if b[j]-min[p]>maxS then maxS := b[j]-min[p];
  end;
  if maxS = -1001 then print('NO')
  else print(maxS)
end.