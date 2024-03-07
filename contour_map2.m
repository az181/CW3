clear
close all
x = 0:0.01:2;
y = 0:0.01:4;

[X,Y] = meshgrid(x,y);
E = abs(X).^4 .*abs(Y).*exp(-8.*X - Y);

cmap = colormap('hsv');
colormap(cmap)
pcolor(X, Y, E)
shading flat
colorbar
hold on
contour(X,Y,E,50, 'w')

x = [0 0.5];
y = [0 1];
hold on
plot(x, y, '.', 'LineWidth', 2, 'MarkerSize', 10)