maxcount = 10;
tic;
for j = 1:maxcount
    clear square
    for i = 1:10000
        square(i) = i^2;
    end
end
average1 = (toc)/maxcount;

maxcount = 1000;
tic;
for j = 1:maxcount
    clear square
    square = zeros(1,10000);
    for i = 1:10000
        square(i) = i^2;
    end
end
average2 = (toc)/maxcount;

maxcount = 1000;
tic;
for j = 1:maxcount
    clear square
    i = 1:10000;
    square(i) = i.^2;
end
average3 = (toc)/maxcount;

fprintf('Loop / uninitialized array     =%8.5f\n', average1);
fprintf('Loop / initialized array / JIT =%8.5f\n', average2);
fprintf('Loop / Vectorized              =%8.5f\n', average3);