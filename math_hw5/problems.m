% David Wade
% MATLAB HW6 Problems

% Problem 1
A = ones(2,5)*7

% Problem 2
a = [3 -1 5 11 -4 2];
b = [7 -9 2 13 1 -2];
c = [-2 4 -7 8 0 9];
B = [a;b;c]
C = transpose(B)

% Problem 3
first_diag = [2 2 2 2];
D_1 = diag(first_diag);
second_diag = [-1 -1 -1];
D_2 = diag(second_diag,1);
D_3 = diag(second_diag,-1);
D = D_1 + D_2 + D_3

% Probelm 4
E = [1 -3 5; 2 2 4; -2 0 6];
F = [0 -2 1; 5 1 -6; 2 7 -1];
G = [-3 4 -1; 0 8 2; -3 5 3];
E + F
F + E
E + (F + G)
(E + F) + G
3.*(E + F)
3.*E + 3.*F
E.*(F+G)
E.*F + E.*G

% Problem 5
% ?4x+ 3y+z=?18.25
% x+ 6y?2z=?48.82
% x?5y+ 4.5z= 92.5
H = [-4 3 1 -18.25; 1 6 -2 48.82; 1 -5 4.5 92.5];
rref(H)
% x = 23.588
% y = 14.7863
% z = 31.7431

% Problem 6
I = [1 2 3; 0 4 5; 0 0 6]
J = rand(3)
K = rand(3)
L = rand(3)
I_1 = inv(I);
J_1 = inv(J);
K_1 = inv(K);
L_1 = inv(L);
det_I = det(I)
det_J_1IJ = det(J_1.*I.*J)
det_K_1IK = det(K_1.*I.*K)
det_L_1IL = det(L_1.*I.*L)





