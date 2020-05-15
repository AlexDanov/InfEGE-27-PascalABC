var a:array[1..30,0..1] of integer;
    i,j,k,n,L,Lmax,p,q:integer;
begin
  Lmax:=1; read(n);
  for i:=1 to n do read(a[i,0],a[i,1]);
  for i:=0 to 1 shl n - 1 do begin // 1 shl n - 1 == 2^n-1
    L := 1;
    k := i;
    p := k mod 2; // k and 1;
    for j:=2 to n do begin
      k := k div 2; // k shr 1
      q := k mod 2; // k and 1;
      if a[j-1,1-p]=a[j,q] then begin
        L+=1;
        if L>Lmax then Lmax:=L;
      end else L:=1;
      p := q;
    end;
  end;
  print(Lmax);
end.
// 5  1 2  2 3  5 4  5 5  5 1