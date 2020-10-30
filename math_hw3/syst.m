function y_prime = syst(t,y)
y_1 = y(1);
y_2 = y(2);
y_3 = y(3);
y_4 = y(4);
y_prime = zeros(4,1);
y_prime(1) = y_2;
y_prime(2) = y_3;
y_prime(3) = y_4;
y_prime(4) = (y_1.*-8)+(y_2.*sin(t))-y_3.*3+t.^2;
end
      