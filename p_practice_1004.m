x_1 = 1;
y_1 = 1;
while x_1 < 8 || y_1 < 33
    fprintf('x = %d y = %d\n', x_1, y_1);
    x_1 = x_1 + 1;
    y_1 = y_1 + 3;
end

x_2 = 1:100;
y_2 = 1:3:300;
count = 1;
while x_2(count) < 8 || y_2(count) < 33
    fprintf('x = %d y = %d\n', x_2(count), y_2(count));
end