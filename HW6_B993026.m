%-------------------------------------------------------------------------
fprintf('\n----------Practice 5-2----------\n\n');

n = -1;
while n < 0
n = input('Enter n: ');

    if n < 0
        fprintf('\n The input is wrong! \n\n');

    elseif n > 0
        nfactorial = 1;
        for i = 1:n
            nfactorial = nfactorial * i;
        end
        fprintf('\n n! = %d\n', nfactorial);

    else  
        fprintf('\n n! = 1\n');

    end
end


figure() 
x = 1:10;
y = factorial(x);
loglog(x,y,'bo');
title('Logarithm-based plot for n!');
xlabel('N');
ylabel('Factorial');
grid on;


%-------------------------------------------------------------------------
fprintf('\n----------Practice 5-3----------\n\n');

fprintf('\nThis program calculates the day of year given the specified date.\n\n');

month = input('Enter specified month (1-12): ');
day = input('Enter specified day (1-31): ');
year = input('Enter specified year (yyyy): ');

if mod(year,400) == 0
    leap_day = 1;
elseif mod(year,100) == 0
    leap_day = 0;
elseif mod(year,4) == 0
    leap_day = 1;
else
    leap_day = 0;
end

day_of_year = day;

for i = 1:month - 1
    switch (i)
        case {1,3,5,7,8,10,12}
            day_of_year = day_of_year + 31;
        case{4,6,9,11}
            day_of_year = day_of_year +30;
        case 2
            day_of_year = day_of_year + 28 + leap_day;
    end
end

fprintf('\nThe date %2d/%2d/%4d is day of year %d.\n', month, day, year, day_of_year);