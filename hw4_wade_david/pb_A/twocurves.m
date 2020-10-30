% First Curve
phi = 0:pi/100:2*pi;
r = sin(2*phi);
figure(1);
polarplot(phi,r)

% Second Curve
t = -1000:0.1:1000;
x = (1-t.^2)./(1+t.^2);
y = 2.*t./(1+t.^2);
figure(2);
polarplot(x,y)