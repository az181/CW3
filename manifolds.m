% https://uk.mathworks.com/help/matlab/math/solve-system-of-odes-with-multiple-initial-conditions.html

dydt = @(x,y) y .* (4 - y - 8 * x);
dxdt = @(x,y) x .* (-1 - x + y);

[t, xy] = ode23(@(t, xy) [dxdt(xy(1), xy(2)); dydt(xy(1), xy(2))], ...
    [0 50], [0.0001;3.9999]);

plot(xy(:,1), xy(:,2))
hold on
plot(0, 4, '.', 'LineWidth', 10, 'MarkerSize', 20)
grid on
title('Unstable Manifold')
xlabel('Exe-halibuts Population')
ylabel('Wye-bait Population')
legend('Unstable Manifold', 'Saddle Point')



