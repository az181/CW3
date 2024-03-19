 %for x(1) = 0
 %   for y(1) =0
x(1) = 0.5
y(1) = 0.5
%for x_q
        h = 0.1;
        nstep = 100;
        for n = 1:nstep
            x(n + 1) = x(n) + h * (x(n) * ( -1 - x(n) +y(n)) - 0.05 * 0.9 ) ;
            y(n + 1) = y(n) + h * (y(n) * (4 - 2*y(n) - 8*x(n)));
     %   end
        end
        % hold no;
        plot (x,y)
        % end

        % if x(n + 1) < 0
        %     plot(x(n), y(n), 'o')
        % 
        % else 
        %     plot(x(n), y(n), 'r')
        % end

