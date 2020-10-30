% Problem 3
k = 1/2;
t = -4:0.1:4;
diff_eq = k.*exp(-t.^2);
hold on
plot(t,diff_eq)
k = 1;
plot(t,diff_eq)
k = 2;
plot(t,diff_eq)
hold off

