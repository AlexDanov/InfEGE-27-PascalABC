var x,n,i,j,k,s:integer;
    b:array[1..5] of integer;
begin
  read(n);
  s:=0;
  for i:=1 to 5 do begin
    read(b[i]);
    for j:=1 to i-1 do
      if ((b[i]+b[j]) mod 2<>0)and(b[i]*b[j]mod 13=0) then s+=1;
  end;
  for i:=6 to n do begin
    for j:=1 to 4 do b[j]:=b[j+1];
    read(b[5]);
    for k:=1 to 4 do
      if ((b[k]+b[5]) mod 2<>0)and(b[k]*b[5]mod 13=0) then s+=1;
  end;
  writeln(s);
end.
    