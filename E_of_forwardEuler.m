% A script for E of forwardEuler.
h = 0.1;
[x, y] = forwardEuler(@dxdt, @dydt, h);
% E_1 = abs(x[1]).^4 .*abs(x[1]).*exp(-8.*x[1] - y[1])
% E_e = abs(x[end]).^4 .*abs(x[end]).*exp(-8.*x[end] - y[end])

E = abs(x).^4 .*abs(y).*exp(-8.*x - y);
disp(E(1));
disp(E(end));