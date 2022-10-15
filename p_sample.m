function out = sample(a , b)
fprintf('In       sample: a = %f, b = %f %f\n', a, b);
a = b(1) + 2*a;
b = a .* b;
out = a + b(1);
fprintf('In       sample: a = %f, b = %f %f\n', a, b);