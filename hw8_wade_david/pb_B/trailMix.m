c = [6; 4.5; 3];
A = [-0.75 0.25 0.25; 0.4 0.4 -0.6; 1 1 1];
b = [0 0 100];
lb = zeros(3,1);
ub = [40; 25; 20];
[x, fval, exitflag] = linprog(-c, A, b, [], [], lb, ub);
profit = -fval;
fprintf('Maximum profit is %g dollars\n',profit)
fprintf('This would reguire %g pounds of peanuts, %g pounds of almonds, and %g pounds of cashews\n', x(1), x(2), x(3))