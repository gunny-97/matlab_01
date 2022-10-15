function [e,f] = B993026(a,b,c)

    A = nargin('B993026');

    if A < 3
        fprintf('\nThe input arguments are not enough\n');
    else
        if c == 1
            e = sqrt(a.^2 + b.^2);
            f = 180/pi * atan2(b,a);
            fprintf('\n r = %f, theta = %f\n', e, f);
        elseif c == 2
            e = a * cos(b * pi/180);
            f = a * sin(b * pi/180);
            fprintf('\n x = %f, y = %f\n', e, f);
        end
    end
end
