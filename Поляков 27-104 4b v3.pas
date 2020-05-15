var b:array[0..4] of integer;
    i,j,n,maxS,p:integer;
    mx,mn:array[0..2] of integer;
begin
  for i:=0 to 2 do (mn[i],mx[i]):=(5001,-5001);
  read(n); maxS := -1001;
  for i:=0 to 4 do read(b[i]);
  for i:=5 to n-1 do begin
    j := i mod 5;
    p := b[j] mod 3;
    mx[p] := max(mx[p],b[j]);
    mn[p] := min(mn[p],b[j]);
    read(b[j]); p := b[j] mod 3;
    maxS := max(maxS,mx[p]-b[j],b[j]-mn[p]);
  end;
  if maxS = -1001 then print('NO')
  else print(maxS)
end.