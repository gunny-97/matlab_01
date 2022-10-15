%-------------------------Note 2 Page 47-------------------------

percent = input('Enter the percentage of carbon-14 remaining in the sample(0~100): \n');
ratio = percent / 100;
lambda = 0.00012097;
age = (-1.0 / lambda) * log(ratio);
string = ['The age of the sample is [' num2str(age) '] years.'];
disp(string);
%---------------------- 0~100 사이의 값을 입력해야 도표가 나옵니다.
figure
years_1 = 0:1000:10000;
percent_1 = 100 * exp(-lambda * years_1);

plot(years_1,percent_1);
ylim([0 100]);

title('Decay of carbon-14');
xlabel('Years');
ylabel('Carbon-14 remaining (%)');
grid on;

%-------------------------Note 3 Page 26-------------------------

figure
subplot(2,1,1)
x_1 = linspace(0, 10, 21);
y_1 = (x_1).^2 - 10*(x_1) +25;

plot(x_1, y_1, '-');
hold on;
plot(x_1, y_1, 'ro');
ylim([0 25]);

title('Linear Plot');
xlabel('x');
ylabel('y');
hold off;

subplot(2,1,2)
x_2 = logspace(-1, 1, 21);
y_2 = (x_2).^2 - 10*(x_2) +25;

semilogx(x_2, y_2, '-');
hold on;
semilogx(x_2, y_2, 'ro');
ylim([0 25]);

title('Semilog x Plot');
xlabel('x');
ylabel('y');
hold off;

%-------------------------Note 3 Page 27-------------------------

figure
tau = 3;
omega = pi;

t = linspace(0, 10, 100);
y_t = 10*exp(-t./tau) .* sin(omega.*t);
plot(t, y_t, 'b');
ylim([-8 10]);

title('Plot of \it{y(t)} = 10\it{e}^{-\it{t / \tau}} sin \it{\omegat}');
xlabel('\it{t}');
ylabel('\it{y(t)}');
grid on;