% This plots the forward Euler for h = 0.1.
clear
[x,y] = forwardEuler(@dxdt, @dydt, 0.1);
plot(x,y)