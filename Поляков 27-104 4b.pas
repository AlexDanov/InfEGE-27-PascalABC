const s=5;lim=100000;
var n,i,j,maxr,k:integer;
    min:array[0..2] of integer=(lim,lim,lim);
    max:array[0..2] of integer=(-lim,-lim,-lim);
    b:array[1..s] of integer;
begin
  read(n); maxr:=-1;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if min[b[1] mod 3]>b[1] then min[b[1] mod 3]:=b[1];
    if max[b[1] mod 3]<b[1] then max[b[1] mod 3]:=b[1];
    for j:=1 to s-1 do b[j] := b[j+1];
    read(b[s]); k:=b[s] mod 3;
    if (min[k]<>lim) and (abs(min[k]-b[s])>maxr) then maxr := abs(min[k]-b[s]);
    if (max[k]<>-lim) and (abs(b[s]-max[k])>maxr) then maxr := abs(b[s]-max[k]);
  end;
  if maxr = -1 then writeln('NO')
  else writeln(maxr);
end.
  