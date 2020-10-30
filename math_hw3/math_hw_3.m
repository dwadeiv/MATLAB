% Problem 1

% Part b
S = sum_value(1,100)
% Part c
x_vals = -2:0.5:5;
plot(x_vals, sum_value(x_vals, 100))
hold on
xlabel('X-axis')
ylabel('Y-axis')
title('Problem 1')
hold off
pause
% Appears to be converging towards e

%Problem 2

[t,y] = ode45(@syst,[0,25],[1,2,3,4]);
figure(2);
hold on
plot(t, y(:,1),'b');
plot(t, y(:,2),'r');
plot(t, y(:,3),'g');
plot(t, y(:,4),'y');
xlabel('time t');
ylabel('x_n(t)');
legend('n = 1','n = 2','n = 3','n = 4');
title('Problem 2 Graph 1')
hold off
pause
hold on
figure(3);
plot(y(:,2),y(:,3));
xlabel('x_2(t)');
ylabel('x_3(t)');
title('Problem 2 Graph 2')
hold off
 



