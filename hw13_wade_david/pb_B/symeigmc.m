P = ones(6,6)/5 - diag([.2 .2 .2 .2 .2 .2]);
A = sym(P);
[V, D] = eig(A);
A*V;
V*D;
