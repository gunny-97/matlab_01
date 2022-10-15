g = 0.5;
theta = linspace(0, 2*pi ,41);
gain = 2*g*(1+cos(theta));

polar (theta, gain, 'r-');
title ('\bfGain versus angle \it(\theta)');


x = input('Enter x: \n');
if x>=0
    sqrt_x = sqrt(x);
    fprintf('sqrt(x) = %f\n', sqrt(x));

else
    disp('ERROR: x < 0');
    sqrt_x = 0;
end
