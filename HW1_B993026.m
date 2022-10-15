x = 0:1:10;
y = x.^2 - 10.*x + 15;
figure
plot(x,y)
title ('plot of y=x.^2-10.x+15');
xlabel('x')
ylabel('y')
grid on;

x1 = 0:pi/100:2*pi;
y11 = sin(2*x1);
y21 = 2*cos(2*x1);
figure
plot(x1,y11,'k-',x1,y21,'b--');
title ('plot of f(x) = sin(2x) and its derivative');
xlabel('x')
ylabel('y')
legend('f(x)', 'd/dx f(x)', 'Location','NW');
grid on;

a = [1 2 1; 2 3 2; -1 0 1];
b = [1; 1; 0];
x = a^-1*b

volts = 120;
rs = 50;
r1 = 1:1:100;
amps = volts ./ (rs + r1);
p1 = (amps .^ 2) .* r1;
figure
plot(r1,p1);
title('Plot of power versus load resistance');
xlabel('Load resistance (ohms)');
ylabel('Power (watts)');
grid on;
