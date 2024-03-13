% This is the forward Euler timestepping method for numerical approximates
% of solving ODEs. The inputs dxdt and dydt are both functions with two
% inputs x and y. h is the time step. This returns the array [x, y], 
% where x and y start at x = 0.75 and y = 0.5 at t = 0 end at t = 5.

function [x, y] = forwardEuler(dxdt, dydt, h)
dt = ceil((5 - 0) / h);
x = zeros(1,dt);
y = zeros(1,dt);
x(1) = 0.75;
y(1) = 0.5;
t = 1:dt ;
% Appling the forward euler methord.
for n = t
    x(n + 1) = x(n) + h * dxdt(x(n),y(n));
    y(n + 1) = y(n) + h * dydt(x(n),y(n));
end
end