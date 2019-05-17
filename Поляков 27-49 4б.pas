type arr = array[1..4] of integer;
var k:arr =(0,0,0,0);
    r:arr =(maxint,maxint,maxint,maxint);
    ax,ay:arr;
    n,i,x,y,j,rmin:integer;
begin
  read(n);
  for i:=1 to n do begin
    read(x,y);
    j:=0;
    if (x>0) and (y>0) then j:=1;
    if (x<0) and (y>0) then j:=2;
    if (x<0) and (y<0) then j:=3;
    if (x>0) and (y<0) then j:=4;
    if j>0 then begin
      k[j]+=1; rmin := min(abs(x),abs(y));
      if rmin<r[j] then (r[j],ax[j],ay[j]):=(rmin,x,y);
    end;
  end;
  j:=1;
  for i:=2 to 4 do 
    if k[i]>k[j] then j := i
    else if (k[i]=k[j]) and (r[j]<r[i]) then j:=i
  writeln('K = ',j);
  writeln('M = ',k[j]);
  writeln('A = (',ax[j],',',ay[j],')');
  writeln('R = ',r[j]);
end.