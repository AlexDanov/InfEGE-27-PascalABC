var i,j,n,x,maxS,p,q:integer;
    L,R:array[0..2] of integer;
begin
  read(n);
  for j:=0 to 2 do (L[j],R[j]):=(0,0);
  maxS := 0;
  for i:=1 to n do begin
    read(x);
    if x>0 then begin
      p := x mod 3; q := (3-p) mod 3;
      if x>R[p] then begin
        R[p]:=x;
        if (L[q]>0)and(L[q]+R[p]>maxS) then maxS := L[q]+R[p];
      end
    end else 
      for j:=0 to 2 do begin
        L[j] := max(L[j],R[j]);
        R[j] := 0;
      end;
  end;
  print(maxS);
end.