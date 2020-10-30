function plot_orbit(y0, T, s, solve)
    sol = solve(@orbit, y0, 0:s:T);
    clf; 
    subplot(2, 1, 1);
    hold on;
    title('Position');
    xlabel('X');
    ylabel('Y');
    plot([0], [0], 'or');
    plot(sol(1,:), sol(2,:), '-b');
    axis('equal');
    v = velocity(sol);
    subplot(2, 1, 2);
    hold on;
    title('Velocity');
    xlabel('Time');
    ylabel('Absolute velocity');
    plot(0:s:T, v, '-b');
end

function ydot = orbit(t, y)
r = sqrt(y(1:2) * y(1:2));
ydot = [y(3);
        y(4);
        -1/r^3 * y(1);
        -1/r^3 * y(2)];
end

function V = velocity(sol)
    V = sqrt(sol(3,:).*sol(3,:) + sol(4,:).*sol(4,:));
end
