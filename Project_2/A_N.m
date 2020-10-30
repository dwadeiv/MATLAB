function [A_n] = A_N(n)
h = 1/(n+1); 
B_n = 2*eye(n) + diag(diag(-1*eye(n-1)),1) + diag(diag(-1*eye(n-1)),-1);
A_n = B_n*(n+1)^2;
end