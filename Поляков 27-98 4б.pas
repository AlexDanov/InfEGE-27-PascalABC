var a,n,i,m1,m2,k1,k2:integer;
begin
  read(n);
  m1:=maxint; m2:=maxint; k1:=0; k2:=0;
  for i:=1 to n do begin
    read(a);
    if a<m1 then begin
      m2:=m1; k2:=k1;
      m1:=a; k1:=0;
    end else if a<m2 then begin
      m2:=a; k2:=0;
    end;
    if a=m1 then k1+=1;
    if a=m2 then k2+=1;
  end;  
  write(m1+m2,' ');
  if m1=m2 then writeln(k1*(k1-1) div 2)
  else writeln(k2);
end.
// 10 1 2 3 1 2 3 1 2 3 1 => 2 6
// 5 2 2 1 2 2 => 3 4
