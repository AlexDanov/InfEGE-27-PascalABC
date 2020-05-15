var s:array[1..19] of integer;
    i,k,n,x:integer;
begin
  for i:=1 to 19 do s[i]:=0;
  read(n);
  for i:=1 to n do begin
    read(x);
    if x<20 then begin
      k += s[20-x];
      s[x]+=1;
    end;
  end;
  print(k);
end.