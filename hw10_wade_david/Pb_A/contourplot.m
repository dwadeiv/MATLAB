[a,b] = meshgrid(0:0.001:1);
A = a + b - (a.^3 + b.^3);
[c,d] = contourf(a,b,A);
clabel(c,d)
maxA = max(max(A));
max_a = a(A == maxA);
max_b = b(A == maxA);
text(max_a, max_b, ['\bullet', num2str(maxA)])
title('$\alpha+\beta-(\alpha^3+\beta^3)$','interpreter','Latex')
xlabel('\alpha')
ylabel('\beta')
colorbar