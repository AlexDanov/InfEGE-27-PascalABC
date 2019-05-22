var s,i,j,k,n,s0,s1,s2,s3,t0,t1,t2,t3,a,b,c:integer;
procedure f(s:integer);
begin
  case s mod 4 of 
    0: t0:=max(t0,s);
    1: t1:=max(t1,s);
    2: t2:=max(t2,s);
    3: t3:=max(t3,s);
  end;
end;

begin
  read(n);
  read(a,b,c);
  (t0,t1,t2,t3):=(0,0,0,0);
  f(a+b); f(a+c); f(b+c);
  for j:=2 to n do begin
   (s0,s1,s2,s3):=(t0,t1,t2,t3);
   (t0,t1,t2,t3):=(0,0,0,0);
    read(a,b,c);
    if s0>0 then begin f(s0+a+b); f(s0+a+c); f(s0+b+c); end;
    if s1>0 then begin f(s1+a+b); f(s1+a+c); f(s1+b+c); end;
    if s2>0 then begin f(s2+a+b); f(s2+a+c); f(s2+b+c); end;
    if s3>0 then begin f(s3+a+b); f(s3+a+c); f(s3+b+c); end;
  end;
  writeln(t0);
end.
// 6  8 3 4  4 8 12  9 5 6  2 8 3  12 3 5  1 4 12 => 88
// 5  1 8 8  7 8 8  7 8 8  7 8 8  1 1 2 => 64