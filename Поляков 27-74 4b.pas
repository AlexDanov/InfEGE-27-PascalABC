type v4=array[0..3] of integer;
var a,i,j,k,n:integer;
    x,y:v4;zero:v4=(0,0,0,0);
    p:array[0..2] of integer;
begin
  read(n);
  read(p[0],p[1],p[2]);
  y := zero;
  for i:=0 to 2 do begin
    a := p[i]+p[(i+1) mod 3];  
    if y[a mod 4]<a then y[a mod 4]:=a;
  end;
  for j:=2 to n do begin
    x := y; y := zero;
    read(p[0],p[1],p[2]);
    for k:=0 to 3 do
      if x[k]<>0 then 
        for i:=0 to 2 do begin
            a := x[k]+ p[i]+p[(i+1) mod 3];  
            if y[a mod 4]<a then y[a mod 4]:=a;
        end;
  end;
  writeln(y[0]);
end.
// 6  8 3 4  4 8 12  9 5 6  2 8 3  12 3 5  1 4 12