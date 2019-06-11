var n,i,j,maxs,x:integer;
    L,R:array[0..2] of integer;
begin
  read(n); maxs:=0;
  for j:=0 to 2 do (L[j],R[j]):=(0,0);
  for i:=1 to n do begin
    read(x);
    if x>0 then R[x mod 3] := max(R[x mod 3],x)
    else begin
      maxs:=max(max(maxs,L[0]+R[0]),max(L[1]+R[2],L[2]+R[1]));
      for j:=0 to 2 do begin 
        L[j]:=max(L[j],R[j]);
        R[j]:=0;
      end;
    end;
  end;
  maxs:=max(max(maxs,L[0]+R[0]),max(L[1]+R[2],L[2]+R[1]));
  writeln(maxs);
end.
// 7 1 0 2 0 5 0 8 => 9
   