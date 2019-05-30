var n,i,a,b,c,d,L,Lmax:integer;
begin
  read(n,a,b); (L,Lmax):=(1,1);
  for i:=2 to n do begin
    read(c,d);
    if (b=c)or(b=d) then begin
      L+=1;
      if b=d then swap(c,d);
    end else if (a=c)or(a=b) then begin
      L:=2;
      if a=d then swap(c,d);
    end else L:=1;
    if L>Lmax then Lmax:=L;
    (a,b):=(c,d);
  end;
  writeln(Lmax);
end.
// 5  1 2  2 3  5 4  5 5  5 1  => 3