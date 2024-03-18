function manifolds
t0 = 0;
tfinal = 10;
xy0 = [0.00001;3.99999];

[t, xy] = ode23(@my0DE, [t0 ; tfinal], xy0);
plot(xy(:,1), xy(:,2))
hold on
plot(0, 4, '.', 'LineWidth', 10, 'MarkerSize', 20)
grid on
title('Unstable Manifold')
xlabel('Exe-halibuts Population')
ylabel('Wye-bait Population')
legend('Unstable Manifold', 'Saddle Point')



end


function dt = my0DE(t, xy)
dt = [1;3];
dt(1) =  xy(1) .* (-1 - xy(1) + xy(2));
dt(2) =  xy(2) .* (4 - xy(2) - 8 * xy(1));
end

