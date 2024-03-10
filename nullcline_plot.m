x = -1.5:1.5; 
y = x + 1;
a = -1.5:1.5;
b = 4 - 8*a;
hold on
plot(x,y, 'b')
plot(a,b, 'r')
xline(0, 'b')
yline(0,'r')
grid on
title('Plot of Nullclines')
xlabel('x')
ylabel('y')
legend('ydot nullcline', 'xdot nullcline')

x = [-1 0];
y = [0 0];
a = [1/3 0];
b = [4/3 4];
hold on
plot(x, y, '.', 'LineWidth', 2, 'MarkerSize', 10)
plot(a, b, '.', 'LineWidth', 2, 'MarkerSize', 10)
legend('xdot nullcline', 'ydot nullcline')