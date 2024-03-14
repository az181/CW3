% Setting initial conditions and variables.
% h is the time step.
% x and y are both 1 dimensional arrays with their respective coordinates. 
% X and Y are both 2 dimensional arrays with their respective coordinates.

clear
close all
h = 0.01;
x = 0:h:2;
y = 0:h:4;
[X,Y] = meshgrid(x,y);

% E is the grid of E(x,y) for x and y.
E = abs(X).^4 .*abs(Y).*exp(-8.*X - Y);

% This plots the colormap of E in X, Y.
cmap = colormap('hsv');
colormap(cmap)
pcolor(X, Y, E)
shading flat
colorbar
hold on
contour(X,Y,E,50, 'w')

% Adds the equilibrium points to the prior plot.
% And labels the plot.
x = [0 0.5];
y = [0 1];
hold on
plot(x, y, '.', 'LineWidth', 2, 'MarkerSize', 10)
hold on
[x,y] = forwardEuler(@dxdt, @dydt, 0.1);
plot(x,y,'LineWidth', 3, 'Color', 'k')
hold on
[x,y] = forwardEuler(@dxdt, @dydt, 0.002);
plot(x,y,'LineWidth', 3, 'Color', 'y')