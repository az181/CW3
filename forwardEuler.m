function [x, y] = forwardEuler(dxdt, dydt, h)
% forwardEuler - - forward Euler on dxdt and dydt where the inputs are (x or y) t v_x and v_y
% this reterns the x y valuse for each point in time incrementing by h
dt = ceil((5 - 0) / h);
x = zeros(1,dt);
y = zeros(1,dt);
x(1) = 0.75;
y(1) = 0.5;
t = 1:dt ;
% a for loop is used the prevent the posibilaty of an infinate loop if the ball never hits the ground
for n = t
    x(n + 1) = x(n) + h * dxdt(x(n),y(n));
    y(n + 1) = y(n) + h * dydt(x(n),y(n));
end
end