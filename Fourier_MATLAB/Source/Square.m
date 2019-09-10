TIM1_Period = 360 - 1;
t = linspace(0, 2*pi, 201);
square = zeros(1, 201);
for n = 1 : 201
    if (n > 49) && (n < 150)
        square(1, n) = TIM1_Period;
    else
        square(1, n) = 0;
    end
end
plot(t, square, 'r*-');
square = square(:, 1 : 200);