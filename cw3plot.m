%for x(1) = 0
%   for y(1) =0
hold off;
clear
close
% x(1) = 0.5;
% y(1) = 0.5;
h = 0.01;
hold on;
for x_i = 0:h:2
    for y_i = 0:h:2
        x(1) = x_i;
        y(1) = y_i;
        nstep = 100;
        for n = 1:nstep
            if x(n) < 0
                break
            end
            x(n + 1) = x(n) + h * (x(n) * ( -1 - x(n) +y(n)) - 0.05 * 0.9 ) ;
            y(n + 1) = y(n) + h * (y(n) * (4 - 2*y(n) - 8*x(n)));
            %   end
        end
        if x(end) > 0
            plot(x(1), y(1), 'g.')
        
        else
            plot(x(1), y(1), 'r.')
        end
        % plot (x,y);
        clear x y;
    end
end
title("Sustainable fishing plot.")
xlabel('Exe-halibuts Population')
ylabel('Wye-bait Population')
hold off;

