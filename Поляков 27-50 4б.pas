var n,i,j,f:integer;
    a:real;
    b:array[0..9] of integer=(0,0,0,0,0,0,0,0,0,0);
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    if a<1 then b[round(a*10)]:=i;
  end;
  for i:=1 to n do begin
    f:=0;
    for j:=0 to 9 do
      if i=b[j] then f:=1;
    if f=0 then write(i,' ');
  end;
end.  
// 5 12.3 0.1 100.2 0.3 1.4  