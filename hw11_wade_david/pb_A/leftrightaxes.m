f_1 = sin(pi.*t);
f_2 = cos(2*pi.*t).*exp(-t);
f_3 = 20.*sqrt(t);
t = linspace(0,10,100000); 
yyaxis left
plot(t,f_1,t,f_2)
xticks(0:2:10)
ylabel('f_1(t), f_2(t)')
yyaxis right 
plot(t,f_3)
ylabel('g(t)') 
xlabel('t') 
title('Dual-axis plot')
grid on 