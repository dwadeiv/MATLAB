I_0 = 10^(-12);
n = 1;
V_t = (1.3806488*10^-23)*300/(1.602176565*10^-19);
R = 10^3;
V_s = 3;
[v1, val, exitflag] = fsolve(@(v1) I_0.*(exp(v1/(n*V_t))-1)./R, .5);
if (exitflag == 1)
    fprintf('error\n')
end
I_diode = I_0.*(exp(v1./(n*V_t))-1);
v2 = V_s - v1;
I_resistor = v2/R;
fprintf('v1 = %gV \n v2 = %gV \n current = %gA\n',v1,v2,I_resistor)
voltage = linspace(0,1,1000);
resistor_IV = (V_s - voltage)./R;
diode_IV = I_0.*(exp(voltage./(n*V_t))-1);
hold on
plot(voltage, resistor_IV,'b');
plot(voltage, diode_IV,'r');
title('I-V Relationship')
legend('resistor','diode')
xlabel('Voltage')
ylabel('Current')
hold off
power_resistor = I_resistor * v2;
power_diode = I_diode * v1;
fprintf('Power dissipated from the resistor = %g Watts\n Power dissipated from the diode = %g Watts\n',power_resistor,power_diode)

