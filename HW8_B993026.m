%-------------------------------------------------------------------------
fprintf('\n----------Practice 5-7----------\n\n');

vo = input('Enter the first velocity: ');
g = -9.81;

range = zeros(1,91);
height = zeros(1,91);

for i = 1:91
    theta = i - 1;
    vxo = vo * cos(theta*(pi / 180));
    vyo = vo * sin(theta*(pi / 180));
    max_time = -2 * vyo / g;
    range(i) = vxo * max_time;
    height(i) = vyo.^2 / (-2 * g);
end

[maxrange, index] = max(range);
maxangle = index - 1;
maxheight = max(height);
fprintf('\nMax range is %8.4f at %2d degrees.\n', maxrange, maxangle);

for i = 5:10:85
    theta = i;
    vxo = vo * cos(theta*(pi / 180));
    vyo = vo * sin(theta*(pi / 180));
    max_time = -2 * vyo / g;
   
    x = zeros(1, 51);
    y = zeros(1, 51);
    for j = 1:51
        time = (j-1) * max_time/50;
        x(j) = vxo * time;
        y(j) = vyo * time + 0.5 * g * time^2;
    end
    plot(x, y, 'b');
    if i == 5
        hold on;
    end
end

title('\bfTrajectory of Ball vs Initial Angle \theta');
xlabel('\bf\itx \rm\bf(meters)');
ylabel('\bf\ity \rm\bf(meters)');
axis ([0 (maxrange*1.05) 0 (maxheight*1.05)]);
grid on;

vxo = vo * cos((maxangle-5)*(pi / 180));
vyo = vo * sin((maxangle-5)*(pi / 180));
max_time = -2 * vyo / g;

x = zeros(1,51);
y = zeros(1,51);
for j = 1:51
    time = (j-1) * max_time / 50;
    x(j) = vxo * time;
    y(j) = vyo * time + 0.5 * g * time^2;
end
plot(x, y , 'r', 'LineWidth', 3.0);
legend('\theta = 5:10:85','','','','','','','','','\theta = 40')
hold off;