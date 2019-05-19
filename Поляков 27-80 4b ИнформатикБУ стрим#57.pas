var i,n,x,R,k13c,k13n,n13c,n13n:integer;
begin
  read(n);
  k13c:=0; k13n:=0; n13c:=0; n13n:=0;
  for i:=1 to n do begin
    read(x);
    if (x mod 13 =0) and (x mod 2 =0) then k13c := k13c + 1;
    if (x mod 13 =0) and (x mod 2<>0) then k13n := k13n + 1;
    if (x mod 13<>0) and (x mod 2 =0) then n13c := n13c + 1;
    if (x mod 13<>0) and (x mod 2<>0) then n13n := n13n + 1;
  end;
  R := k13c*k13n+k13c*n13n+k13n*n13c;
  writeln(R);
end.