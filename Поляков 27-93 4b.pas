const s=6;
var b:array[1..s] of integer;
    n,i,j,k1,k3,k7,k9,k:integer;
begin
  read(n);
  (k1,k3,k7,k9,k):=(0,0,0,0,0);
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    case b[1] mod 10 of
      1: k1+=1;
      3: k3+=1;
      7: k7+=1;
      9: k9+=1;
    end;    
    for j:=1 to s-1 do b[j]:=b[j+1]; 
    read(b[s]);
    case b[s] mod 10 of
      1: k+=k3;
      3: k+=k1;
      7: k+=k9;
      9: k+=k7;
    end;   
  end;
  writeln(k);
end.