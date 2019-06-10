const z=101;
var n,i,x,np,minp1,s,maxA0,maxB0,maxA1,maxB1:integer;
begin
  read(n);
  np:=0; minp1:=z; s:=0;
  (maxA0,maxB0,maxA1,maxB1):=(-z,-z,-z,-z);
  for i:=1 to n do begin
    read(x);
    if x>0 then begin
      s:=s+x;
      np:=np+1;
      if (x mod 2 <> 0) and (x<minp1) then minp1:=x;
    end else if x<0 then 
      if x mod 2 = 0 then begin
        if x>maxA0 then (maxB0,maxA0):=(maxA0,x)
        else if x>maxB0 then maxB0:=x;
      end else 
        if x>maxA1 then (maxB1,maxA1):=(maxA1,x)
        else if x>maxB1 then maxB1:=x;
  end;
  if np>0 then begin
    if s mod 2 = 0 then writeln(s)
    else if minp1<>z then
           if (maxA1<>-z) then 
             if minp1<abs(maxA1) then writeln(s-minp1)
             else writeln(s+maxA1)
           else writeln(s-minp1)
         else if (maxA1<>-z) then writeln(s+maxA1);
  end else begin
    s := -500;
    if (maxA0<>-z)and(maxB0<>-z) then s:=maxA0+maxB0;
    if (maxA1<>-z)and(maxB1<>-z)and(maxA1+maxB1>s) then s:=maxA1+maxB1;
    if s<>-500 then writeln(s)
    else writeln(-1);
  end;
end.
  