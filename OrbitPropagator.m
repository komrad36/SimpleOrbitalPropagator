[~, pv] = ode45(@(~, pv) [pv(4:6); -398600/(norm(pv(1:3)))^3.*pv(1:3)],...
    [0 1e5], [10000 0 500 0 9 0]', odeset('RelTol', 1e-8));
%   [time ]  [initial pos, vel ] in km and km/s
hold on, grid on
plot3(0,0,0, 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 40)
plot3(pv(:,1), pv(:,2), pv(:,3), 'g', 'LineWidth', 1.5);