var a:array[1..10000] of integer;
    n,x,i,j,k,hmax:integer;
    t:boolean;
begin
  read(n);
  hmax := 0; n:=0;
  read(x);
  while x>0 do begin
    n:=n+1;
    a[n]:= x;
    read(x);
  end;
  for i:=1 to n do 
    for j:=i to n do begin
      t:=true;
      for k:=i to j-1 do
        t:= t and (a[k]<a[k+1]);
      if t and (a[j]-a[i]>hmax) then hmax := a[j]-a[i];
    end;
  writeln(hmax);
end.
// 1 2 3 1 2 3 4 1 2 3 4 5 1 2 0 => 4
// 5 6 5 4 3 2 1 2 3 2 3 4 5 6 7 8 0 => 6