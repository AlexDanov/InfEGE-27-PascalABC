var n,i,a,b,c,d,L,Lmax:integer;
begin
  read(n,a,b); (L,Lmax):=(1,1);
  for i:=2 to n do begin
    read(c,d);
    if b=c then L+=1
    else if b=d then begin
      swap(c,d);
      L+=1;
    end else if a=c then L:=2
    else if a=d then begin
      swap(c,d);
      L:=2;
    end else L:=1;
    if L>Lmax then Lmax:=L;
    (a,b):=(c,d);
  end;
  writeln(Lmax);
end.
// 5  1 2  2 3  5 4  5 5  5 1  => 3