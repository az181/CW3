% Script is used to plot the the non-stabel manifold for 1.3.

% https://uk.mathworks.com/help/matlab/math/solve-system-of-odes-with-multiple-initial-conditions.html

% These are ODEs used it 1.3 
dxdt = @(x,y) x .* (-1 - x + y);
dydt = @(x,y) y .* (4 - y - 8 * x);


% This returns a solution for the ODEs using matlabs biult in ode23
% function starting at [0.0001;3.9999] (a point that is very close to
% [0,4]).
[~, xy] = ode23(@(t, xy) [dxdt(xy(1), xy(2)); dydt(xy(1), xy(2))], ...
    [0 50], [0.0001;3.9999]);

% Plots the manifold.
plot(xy(:,1), xy(:,2))
hold on
plot(0, 4, '.', 'LineWidth', 10, 'MarkerSize', 20)
grid on
title('Unstable Manifold')
xlabel('Exe-halibuts Population')
ylabel('Wye-bait Population')
legend('Unstable Manifold', 'Saddle Point')



