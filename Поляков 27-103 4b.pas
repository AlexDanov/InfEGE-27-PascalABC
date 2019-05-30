const s=5;lim=100000;
var n,i,j,minr,k:integer;
    min:array[0..2] of integer=(lim,lim,lim);
    max:array[0..2] of integer=(-lim,-lim,-lim);
    b:array[1..s] of integer;
begin
  read(n); minr:=maxint;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if min[b[1] mod 3]>b[1] then min[b[1] mod 3]:=b[1];
    if max[b[1] mod 3]<b[1] then max[b[1] mod 3]:=b[1];
    for j:=1 to s-1 do b[j] := b[j+1];
    read(b[s]); k:=b[s] mod 3;
    if (min[k]<>lim) and (min[k]-b[s]<minr) then minr := min[k]-b[s];
    if (max[k]<>-lim) and (b[s]-max[k]<minr) then minr := b[s]-max[k];
  end;
  if minr = maxint then writeln('NO')
  else writeln(minr);
end.
  