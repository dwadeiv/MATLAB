function x=bridge(R,Vs)
if nargin < 1 || isempty(R) || length(R) ~= 5
    R = [1000 1000 1000 1000 1000];
    Vs = 2;
end
A = [((1/R(1)) + (1/R(3)) + (1/R(4))) (-(1/R(3))); (-(1/R(3))) ((1/R(2)) + (1/R(3)) +(1/R(5)))];
B = [(1/R(1)); (1/R(2))] * Vs;
x = A\B;
end