fprintf(' -----------Problem 1-----------\n\n');
fprintf (' 4, 8, 9  번이 틀렸습니다.\n\n');


fprintf(' ----------Problem 2-2----------\n');


numerator = input('\n Input numerator: ');
denominator = input('\n Input denominator: ');

if abs(denominator) < 1.0E-300
    fprintf('\n Divide by 0 error.\n');
else 
    fun = numerator / denominator;
    fprintf('\n fun = %f\n', fun);
end

fprintf('\n----------Problem 2-3----------\n\n');

distance = input(' Input distance: ');

if distance <= 100
    cost = 1.00 * distance;
elseif distance <= 300
    cost = 100 + 0.80 * (distance - 100);
else
    cost = 260 + 0.70 * (distance - 300);
end
average_cost = cost / distance;

fprintf('\n Total cost = $ %f\n', cost);
fprintf('\n Average cost per mile = $ %f\n', average_cost);

fprintf('\n-----------Problem 3-----------\n\n');

fprintf(' This program solves for the roots of a quadratic \n');
fprintf(' equation of the form A*X^2 + B*X + C = 0. \n\n');

a = input('Enter the coefficient A: ');
b = input('Enter the coefficient B: ');
c = input('Enter the coefficient C: ');

discriminant = b^2 - 4 * a * c;

if a == 0
    fprintf('\n ERROR: A = 0 \n');
else
    if discriminant > 0
        x1 = (-b + sqrt(discriminant)) / ( 2 * a );
        x2 = (-b - sqrt(discriminant)) / ( 2 * a );
        fprintf('\n This equation has two real roots: \n');
        fprintf(' x1 = %f\n', x1);
        fprintf(' x2 = %f\n', x2);

    elseif discriminant == 0
        x1 = ( -b ) / ( 2 * a );
        fprintf('\n This equation has two identical real roots: \n');
        fprintf(' x1 = x2 = %f\n', x1);

    else
        real_part = ( -b ) / ( 2 * a );
        imag_part = sqrt( abs (discriminant) ) / ( 2 * a );
        fprintf('\n This equation has complex roots: \n');
        fprintf(' x1 = %f +i %f\n', real_part, imag_part);
        fprintf(' x2 = %f -i %f\n', real_part, imag_part);
    end
end




