begin
  var (L,R,k):=(0,0,0);
  loop readInteger do 
    if readInteger>0 then 
      (k,R):=(k+L,R+1)
    else 
      (L,R):=(L+R,0);
  print(k);
end.
// 7 1 2 0 3 0 4 5