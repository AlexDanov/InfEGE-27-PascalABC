const z=-15000;
var n,a,i,r,s,m0,ms:integer;
    m:array[0..2,0..2] of integer=((z,z,z),(z,z,z),(z,z,z));
begin
  read(n);
  for i:=1 to n do begin
    read(a); (r,s) := (a mod 3,i mod 3);
    if (r=0) and (s=0) then 
      if a>m[0,0] then m0 := m[0,0]
      else if a>m0 then m0 := a;
    if a>m[r,s] then m[r,s] := a;
  end;
  ms := seq(m[0,0]+m0,m[0,1]+m[0,2],m[1,0]+m[2,0],
            m[1,1]+m[2,2],m[2,1]+m[1,2],-1).Max;
  writeln(ms);
end.