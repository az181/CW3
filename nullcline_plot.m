% xn are the xdot nullclines and yn are the ydot nullclines. the eqs are
% the equilibrium points. this code plots the nullclines and the 
% equilibrium points.

clear
xn_x = -1.5:1.5; 
xn_y = xn_x + 1;
yn_x = -1.5:1.5;
yn_y = 4 - 8 * yn_x;
hold on
plot(xn_x,xn_y, 'b')
plot(yn_x,yn_y, 'r')
xline(0, 'b')
yline(0,'r')
grid on
title('Plot of Nullclines')
xlabel('x')
ylabel('y')
legend('ydot nullcline', 'xdot nullcline')

eq1 = [-1 0];
eq2 = [0 0];
eq3 = [1/3 0];
eq4 = [4/3 4];
hold on
plot(eq1, eq2, '.', 'LineWidth', 2, 'MarkerSize', 10)
plot(eq3, eq4, '.', 'LineWidth', 2, 'MarkerSize', 10)
legend('xdot nullcline', 'ydot nullcline')