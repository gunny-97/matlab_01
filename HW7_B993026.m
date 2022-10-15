%-------------------------------------------------------------------------
fprintf('\n----------Practice 5-6----------\n\n');

fprintf('\nThis program performs a least-squares fit of an \ninput data set to a straight line.\n');
n = input('Enter the number of input [x y] points: ');

for i = 1:n
    temp = input('Enter [x y] pair: ');
    x(i) = temp(1);
    y(i) = temp(2);
end

sum_x = 0;
sum_y = 0;
sum_x2 = 0;
sum_xy = 0;

for i = 1:n
    sum_x = sum_x + x(i);
    sum_y = sum_y + y(i);
    sum_x2 = sum_x2 + x(i)^2;
    sum_xy = sum_xy + x(i) * y(i);
end

x_bar = sum_x / n;
y_bar = sum_y / n;
slope = (sum_xy - sum_x * y_bar) / (sum_x2 - sum_x * x_bar);
intercept = y_bar - slope * x_bar;

fprintf('\nRegression coefficients for the least-squares line: \n');
fprintf('Slope (m)      = %8.3f\n', slope);
fprintf('Intercept (b)  = %8.3f\n', intercept);
fprintf('No of points   = %8d\n', n);

figure();
plot(x,y,'bo');
hold on;

x_min = min(x);
x_max = max(x);
y_min = slope * x_min + intercept;
y_max = slope * x_max + intercept;

plot([x_min x_max], [y_min y_max], 'r-', 'LineWidth', 2);
hold off;

title('\bfLeast-Squares Fit');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('Input data', 'Fitted line', 'Location', 'southeast');
grid on
