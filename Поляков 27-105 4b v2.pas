var b:array[1..6] of integer;
    L:array[0..4] of integer=(0,0,0,0,0);
    i,j,n,k:integer;
begin
  read(n);
  k:=0;
  for i:=1 to 5 do read(b[i]);
  for i:=6 to n do begin
    read(b[6]);
    L[b[1]mod 5]+=1;
    k+=L[b[6] mod 5];
    for j:=1 to 5 do b[j]:=b[j+1];
  end;
  print(k);
end.