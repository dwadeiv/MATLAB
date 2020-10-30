function fh = bestofn(n)
n = abs(n);
if rem(n,2) ~= 1
    error('Needs to be a non-even positive integer.')
end
h = (n+1)/2;
coeff = zeros(1, n+1);
for i = 0:(h-1)
    sum = 0;
    for j = 0:i
        sum = sum + (-1).^j * nchoosek(i+h,j);
    end
    coeff(h-i) = sum * nchoosek(n, i+h);
end
fh = @(x) polyval(coeff, x);
end 