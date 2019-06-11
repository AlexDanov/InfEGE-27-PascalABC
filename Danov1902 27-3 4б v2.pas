var n,i,maxs,x:integer;
    L,R:array[0..2] of integer;
  procedure calcMaxS();begin
      maxs:=max(max(maxs,L[0]+R[0]),max(L[1]+R[2],L[2]+R[1]));
      for var j:=0 to 2 do begin 
        L[j]:=max(L[j],R[j]);
        R[j]:=0;
      end;
    end;
begin
  read(n); maxs:=0;
  for i:=0 to 2 do (L[i],R[i]):=(0,0);
  for i:=1 to n do begin
    read(x);
    if x>0 then R[x mod 3] := max(R[x mod 3],x)
    else calcMaxS();
  end;
  calcMaxS();
  writeln(maxs);
end.
// 7 1 0 2 0 5 0 8 => 9
   