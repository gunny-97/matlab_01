fprintf('\n----------Practice 4-4----------\n\n');
x = input(' Enter the x coefficient: ');
y = input(' Enter the y coefficient: ');

if (x >= 0) & (y >= 0)
    funxy = x + y;

elseif (x >= 0) & (y < 0)
    funxy = x + y^2;

elseif (x < 0) & (y >= 0)
    funxy = x^2 + y;

else
    funxy = x^2 + y^2;

end

fprintf('\n The value of the function is %d \n', funxy);

fprintf('\n----------Practice 4-5----------\n\n');
n = 1;
R = 8.314;
T = 273;

P = 1:0.1:1000;
V = (n * R * T) ./ P;

figure();
loglog(P, V, '-r', 'LineWidth', 2);


title('\bfVolume vs Pressure in an Ideal Gas');
xlabel('\bfPressure (kPa)');
ylabel('\bfVolume (L)');
grid on;
hold on;

T = 373;
V = (n * R * T) ./ P;

loglog(P, V, 'b--', 'LineWidth', 2);
hold off;
legend('T = 273 K', 'T = 373 K');


fprintf('\n----------Practice 5-1----------\n\n');

n = 0;
sum_x = 0;
sum_x2 = 0;
c = 0;

x = input('Enter first value: ');
if (x < 0) & (c<3)
    fprintf('At least, three values must be entered!\n');
    x = 0;
    c = c - 1;
    n = n - 1;
end
c = c + 1;

while x >= 0
    n = n + 1;
    sum_x = sum_x + x;
    sum_x2 = sum_x2 + x^2;

    x = input('Enter next value: ');
    if (x < 0) & (c<3)
        fprintf('At least, three values must be entered!\n');
        x = 0;
        c = c - 1;
        n = n - 1;
    end
    c = c + 1;
end
   


x_bar = sum_x / n;
std_dev = sqrt( (n * sum_x2 - sum_x^2) / (n * (n-1)) );
fprintf('\nThe mean of this data set is: %f\n', x_bar);
fprintf('The standard deviation is: %f\n', std_dev);
fprintf('The number of data points is: %f\n', n);
