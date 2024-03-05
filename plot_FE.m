[x,y] = forwardEuler(@dxdt, @dydt, .1);
plot(x,y)