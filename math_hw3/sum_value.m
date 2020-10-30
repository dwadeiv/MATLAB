% Problem 1
% Part a

function sum_value = sum_calc(x,N)
f = 0;
for n = 0:N
    f = f + ((x.^n)/factorial(n));
end
sum_value = f;
end
