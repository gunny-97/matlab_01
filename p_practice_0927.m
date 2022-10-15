
x_1 = 0:0.2:100;
y_2 = 2 * x_1.^2;

subplot(2,2,1)
plot(x_1,y_2);
title('Linear / linear Plot');
xlabel('x');
ylabel('y');
grid on;

subplot(2,2,2)
semilogx(x_1,y_2);
title('Log / linear Plot');
xlabel('x');
ylabel('y');
grid on;

subplot(2,2,3)
semilogy(x_1,y_2);
title('Linear / log Plot');
xlabel('x');
ylabel('y');
grid on;

subplot(2,2,4)
loglog(x_1,y_2);
title('Log / log Plot');
xlabel('x');
ylabel('y');
grid on;

figure (2)
x_2 = -pi:pi/20:pi;
y1_2 = sin(x_2);
y2_2 = cos(x_2);
plot (x_2, y1_2, 'b-');
hold on;
plot (x_2, y2_2, 'k--');
hold off;
legend ('sin x', 'cos x');

figure (3)
subplot (2 ,2 ,1)
x_3 = 0:0.05:2;
y1_3 = exp(x_3);
plot(x_3,y1_3);
title('exp(x)');
grid on;

subplot (2, 2, 2)
y2_3 = exp(-x_3);
plot(x_3,y2_3);
title('exp(-x)');
grid on;

figure (4)
subplot(2,1,1)
x_4 = -pi:pi/20:pi;
y_4 = sin(x_4);
plot(x_4,y_4);
title('Subplot 1 title');
subplot(2,1,2)
x_4 = -pi:pi/20:pi;
y_4 = cos(x_4);
plot(x_4,y_4);
title('Subplot 1 title');

figure (5)
x_5 = 1:5;
y_5 = zeros(5,3);
y_5(1,:) = [1 2 3];
y_5(2,:) = [2 3 4];
y_5(3,:) = [3 4 5];
y_5(4,:) = [4 5 4];
y_5(5,:) = [5 4 3];
bar(x_5,y_5);
title('\bfExample of a 2D Bar Plot');
xlabel('\bf\itx');
ylabel('\bf\ity');
