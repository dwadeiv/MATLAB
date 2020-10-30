Prob = linspace(0, 1, 1000);
f3 = bestofn(3);
f5 = bestofn(5);
f7 = bestofn(7);
plot(Prob, [f3(Prob); f5(Prob); f7(Prob)])
xlabel('$P$', 'interpreter', 'Latex');
title('Probability of Winning');
legend('W_3(P)','W_5(P)','W_7(P)')
grid on

