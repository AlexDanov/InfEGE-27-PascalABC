﻿var i,j,k,n,x:integer;
    L,R:array[0..2] of integer;
begin
  read(n);
  for i:=0 to 2 do (L[i],R[i]):=(0,0);
  k:=0;
  for i:=1 to n do begin
    read(x);
    if x>0 then 
      R[x mod 3]+=1
    else begin
      k += L[0]*R[0]+L[1]*R[2]+L[2]*R[1];
      for j:=0 to 2 do begin
        L[j]+=R[j];
        R[j] := 0;
      end;
    end;
  end;
  k += L[0]*R[0]+L[1]*R[2]+L[2]*R[1];
  print(k);
end.
// 10 1 2 0 3 4 0 5 6 0 7 => 6