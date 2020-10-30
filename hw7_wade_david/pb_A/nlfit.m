function nlfit()
    data = readtable('nlfit.csv');
    voltage = data.V;
    current = data.A;
    pf = polyfit(voltage, current, 1);
    subplot(2,1,1)
    plot(voltage, current, 'o', voltage, polyval (pf,voltage))
    title('Voltage vs Current')
    xlabel('Votlage')
    ylabel('Current')
    fprintf('Power [P] = I*V\n')
    [R,p] = corrcoef(voltage,current);
    fprintf('The p value for the equation is %g\n',p(1,2))
    fprintf('The correlation of coefficent for the logarithmic equation is %g\n',R(1,2))
    pf_2 = polyfit(log(voltage(2:end)),log(current(2:end)),1);
    time = linspace(1,voltage(end),10000);
    subplot(2,1,2)
    A = plot(time,exp(pf_2(2)).*time.^(pf_2(1)))
    xlabel('Voltage')
    ylabel('Current')
    title('Logarithmic Voltage vs Current')
    fprintf('The power law is: Current = %g * V^%g \n', exp(pf_2(2)),pf_2(1))
    [R,p] = corrcoef(log(voltage(2:end)),log(current(2:end)));
    fprintf('The correlation of coefficent for the logarithmic equation is %g\n',R(1,2))
    fprintf('The p value for the logarithmic equation is %g\n',p(1,2))
    saveas(A,'Voltage_vs_Current','pdf')
    hold off
end 