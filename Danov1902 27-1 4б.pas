var n,i,k,x:integer;
begin
  read(n); L:=0;R:=0;
  for i:=1 to n do begin
    read(x);
    if x>0 then R+=1
    else begin
      k+=L*R;
      L:=L+R;
      R:=0;
    end;
  end;
  k+=L*R;
  writeln(k);
end.
// 7 1 2 0 3 0 4 5 => 8
   