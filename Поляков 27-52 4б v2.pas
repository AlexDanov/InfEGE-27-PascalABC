var n,i,d,k,f:integer;
    s:array[1..99] of integer;
begin 
  read(n);
  for i:=1 to 99 do s[i]:=0;
  for i:=1 to n do begin
    read(d,k);
    if k mod d > 0 then s[k mod d]+=1;
  end;
  k:=0; f:=0;
  for i:=1 to 99 do 
    if s[i]>=f then begin
      k := i;
      f := s[i];
    end;
  writeln(k);
end.