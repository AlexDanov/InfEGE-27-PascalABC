begin
  var (n,L,mn) := ReadInteger3;
  var (M,R) := (max(L, mn),0);
  loop n-3 do begin
    var x := ReadInteger;
    R := max(R,x);
    if x<=mn then begin
      R := 0;
      if x<mn then
        (mn,L):=(x,M);
    end;
    M := max(M,x);
  end;
  print(L+max(R,ReadInteger));
end.
// 8 1 3 2 5 2 3 1 7 => 12=5+7
// 10 8 8 6 8 7 9 6 6 5 10 => 19
(*
	int n, num, L, R=0, mi, i, M;
	cin >> n >> L >> mi;
	for (M = max(L, mi), i = 3; i < n; i++) {
		cin >> num;
		R = max(R, num);
		if (num <= mi) {
			R = 0;
			if (num < mi) {
				mi = num;
				L = M;
			}
		}
		M = max(M, num);
	}
	cin >> num;
	cout << L + max(R, num);
	*)