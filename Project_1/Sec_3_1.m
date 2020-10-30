close all; clear all; 

    x1min = -1; x1max = 6; x2min = -1; x2max = 6;

    x1step = .5; x2step = .5; 

    [x1, x2] = meshgrid(x1min:x1step:x1max, x2min:x2step:x2max);
    
    a = 1.5;
    b = 1.1;
    c = 2.5;
    d = 1.4;
    
    dx1 = -a*x1 + b*(x1.*x2);  
    dx2 = c*x2 - d*(x1.*x2); 
    dx1 = dx1./sqrt(dx1.^2 + dx2.^2); 
    dx2 = dx2./sqrt(dx1.^2 + dx2.^2);
    
    hold on 
    
    grid
    y = [0 0];
    t = [-1 6];
    y3 = [a/b a/b];
    x3 = [c/d c/d];
    
    figure(1)
    quiver(x1, x2, dx1, dx2, 'AutoScaleFactor',0.5)
    plot(t, y3 ,'--r','LineWidth',1)
    plot(y, t, '--r','LineWidth',1,'HandleVisibility', 'off')
    plot(x3, t, '--k','LineWidth',1)
    plot(t, y, '--k', 'LineWidth',1,'HandleVisibility', 'off')
    plot(0, 0, 'g*','LineWidth',1.75)
    plot(x3, y3, 'g*','LineWidth',1.75,'HandleVisibility','off')
    
    LVsyst = @(t,x) [-a*x(1)+b*x(1).*x(2); c*x(2)-d*x(1).*x(2)];
    [t, x] = ode45(LVsyst, [0,20], [0.5, 1]);
    plot(x(:,1),x(:,2),'b','LineWidth',1.75)
    
    axis([x1min x1max x2min x2max])   
    xlabel('Predator Population (Dozens)','Interpreter','latex')
    ylabel('Prey Population (Dozens)','Interpreter','latex')
    title('The Lotka-Volterra System','Interpreter','latex')
    legend('Solution Vectors', 'Vertical Nullcline', 'Horizantal Nullcline','Equilibrium solution','Solution Curve')
    hold off
    print -depsc Fig3_1_1 
    
    figure(2)
    hold on
    grid
    plot(t, x(:,1), 'b', t, x(:,2), 'r')
    axis([0 20 -1 6])
    xlabel('Time (days)','Interpreter','latex')
    ylabel('Population Size (Dozens)','Interpreter','latex')
    legend('Predator','Prey')
    hold off
    print -depsc Fig3_1_2
    