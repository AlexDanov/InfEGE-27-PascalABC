var s:array[1..34] of integer;
    i,j,x,n,k:integer;
begin
  for i:=1 to 34 do s[i]:=0;
  read(n);
  k:=0;
  for i:=1 to n do begin
    x := min(34,ReadInteger);
    for j:=x+1 to 34-x do k+=s[j];
    s[x]+=1;
  end;
  print(k);
end.    
    
// 6 32 1 16 7 22 16