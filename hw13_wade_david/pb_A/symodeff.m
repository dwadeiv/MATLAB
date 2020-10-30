syms x(t); 
xdot = diff(x);
xdot_2 = diff(xdot) == -g;
F = dsolve(xdot_2);
h = dsolve(xdot_2, x(0) == 10, xdot(0) == 0);
simplify(h)
g_earth = 9.81;
planet = subs(h, g, g_earth);
pretty(simplify(planet))
fplot(planet, [0,2])
