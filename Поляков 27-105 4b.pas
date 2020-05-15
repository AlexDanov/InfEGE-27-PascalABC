var b:array[0..4] of integer;
    L:array[0..4] of integer=(0,0,0,0,0);
    i,j,n,k:integer;
begin
  read(n);
  k:=0;
  for i:=0 to 4 do read(b[i]);
  for i:=5 to n-1 do begin
    j := i mod 5;
    L[b[j] mod 5] += 1;
    read(b[j]);
    k += L[b[j] mod 5];
  end;
  print(k);
end.