var i,n,x,L,R,M,mn:integer;
begin
  read(n,L,mn);
  R := 0;
  for i:=3 to n-1 do begin
    read(x);
    if x<mn then begin
      L := max(L,M,R,mn);
      (mn,M,R):=(x,0,0);
    end
    else if x=mn then
      (M,R) := (max(M,R),0)
    else 
      R := max(R,x);
  end;
  read(x);
  print(L,max(R,x));
end.
// 8 1 3 2 5 2 3 1 7 => 12=5+7
// 10 8 8 6 8 7 9 6 6 5 10 => 19