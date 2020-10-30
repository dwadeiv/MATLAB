close all; clear all; 

    x1min = -1; x1max = 6; x2min = -1; x2max = 6;

    x1step = .5; x2step = .5; 

    [x1, x2] = meshgrid(x1min:x1step:x1max, x2min:x2step:x2max);
    
    a = 1.5;
    b = 1.1;
    c = 2.5;
    d = 1.4;
    k = 0.5;
    
    dx1 = -a*x1 + b*(x1.*x2);  
    dx2 = c*(1 - k*x2).*x2 - d*(x1.*x2); 
    dx1 = dx1./sqrt(dx1.^2 + dx2.^2); 
    dx2 = dx2./sqrt(dx1.^2 + dx2.^2);
    
    hold on 
    
    grid
    y = [0 0];
    t = [-1 6];
    y3 = [a/b a/b];
    y4 =@(t) (c - d*t)./(c*k);
    
    figure(1)
    quiver(x1, x2, dx1, dx2, 'AutoScaleFactor',0.5)
    plot(t, y3 ,'--r','LineWidth',1)
    plot(y, t, '--r','LineWidth',1,'HandleVisibility', 'off')
    fplot(y4, '--k','LineWidth',1)
    plot(t, y, '--k','LineWidth',1, 'HandleVisibility', 'off')
    plot(0, 0, 'g*','LineWidth',1.75)
    plot(0.4727, a/b,'*g','LineWidth',1.75,'HandleVisibility','off')
    plot(0,2,'*g','LineWidth',1.75,'HandleVisibility','off')
    
    LVsyst = @(t,x) [-a*x(1)+b*x(1).*x(2); c*(1 - k*x(2)).*x(2) - d*(x(1).*x(2))];
    [t, x] = ode45(LVsyst, [0,50], [0.5, 1]);
    plot(x(:,1),x(:,2),'b','LineWidth',2)
    
    axis([x1min x1max x2min x2max])   
    xlabel('Predator Population (Dozens)','Interpreter','latex')
    ylabel('Prey Population (Dozens)','Interpreter','latex')
    title('The Logistic Predator-Prey System','Interpreter','latex')
    legend('Solution Vectors', 'Vertical Nullcline', 'Horizantal Nullcline','Equilibrium solution','Solution Curve')
    hold off
    print -depsc Fig3_2_1
    
    figure(2)
    hold on
    grid
    plot(t, x(:,1), 'b', t, x(:,2), 'r')
    axis([0 50 0 2])
    xlabel('Time (days)','Interpreter','latex')
    ylabel('Population Size (Dozens)','Interpreter','latex')
    legend('Predator','Prey')

    print -depsc Fig3_2_2
    