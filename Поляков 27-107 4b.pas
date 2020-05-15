var i,j,x,n,k,L,R:integer;
begin
  read(n);
  (L,R,k):=(0,0,0);
  for i :=1 to n do begin
    read(x);
    if x>0 then R+=1
    else begin
      k+=L*R;
      L+=R;
      R:=0;
    end;
  end;
  k+=L*R;
  print(k);
end.
// 7 1 2 0 3 0 4 5