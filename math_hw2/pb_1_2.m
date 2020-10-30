% APPM 2360 Matlab Homework 2
% Due: Thursday, January 31, 2019

% Problem 1
x = -10:0.1:8;
fnctin = (x-6).*(x.^2-1).*(x+8);
hold on
plot(x,fnctin)
intercept_1 = 6;
intercept_2 = 1;
intercept_3 = -8; 
plot(intercept_1,0,'o')
plot(intercept_2,0,'o')
plot(intercept_3,0,'o')
xlabel('X from [-10,8]')
ylabel('Y values')
grid
hold off

% Problem 2
Sum = 0;
for i = 0:100
    Sum =  Sum + ((-3).^(-i))/(2.*i+1);
end
Sum


