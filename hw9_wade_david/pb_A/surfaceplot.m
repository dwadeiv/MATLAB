[x,y] = meshgrid(0:0.05:1);
z = x + y - (x.^2 + y.^2);
surf(x, y, z);
colorbar
xlabel('$x$', 'interpreter', 'LaTeX');
xlabel('$y$', 'interpreter', 'LaTeX');
title('$x + y - (x^2 + y^2)$', 'interpreter', 'Latex');