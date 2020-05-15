var i,n,x,L,R,M,mn:integer;
begin
  read(n,L,mn);
  R := 0;
  println(x,mn,L,M,R);
  for i:=3 to n-1 do begin
    read(x);
    if x<mn then begin
      if L<M then L:=M;
      if L<mn then L:=mn;
      if L<R then L:=R; 
      mn:=x;
      R := 0;
      M := 0;
    end
    else if x=mn then
      (M,R) := (max(R,M),0)
    else if x>R then 
      R := x;
    println(x,mn,L,M,R);
  end;
  read(x);
  if x>R then R:=x;
  print(L,R);
end.
// 8 1 3 2 5 2 3 1 7 => 12=5+7