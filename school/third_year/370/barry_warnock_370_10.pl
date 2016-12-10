dif(X, 1) :- var(X).
dif(C, 0) :- integer(C).
dif(U^N, D) :- dif(U, UD),
	       D = N*U^(N-1)*UD.
dif(U+V, D) :- dif(U, L),
	       dif(V, R),
	       D = L + R.
dif(U-V, D) :- dif(U, L),
	       dif(V, R),
	       D = L - R.
dif(U*V, D) :- dif(U, UD),
	       dif(V, VD),
	       D = UD*V+U*VD.
dif(U/V, D) :- dif(U, UD),
	       dif(V, VD),
	       D = (UD*V+U*VD)/V^2.
dif(log(U), D) :- dif(U, UD),
		  D = UD/U.
dif(cos(U), D) :- dif(U, UD),
		  -UD*sin(U).
dif(sin(U), D) :- dif(U, UD),
		  UD*cos(U).
