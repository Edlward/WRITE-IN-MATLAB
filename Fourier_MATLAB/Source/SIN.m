clear, clc;
TIM1_Period = 360 - 1;
t = linspace(0, 2*pi, 201);
sin = TIM1_Period/2*(sin(t) + 1);
plot(t, sin, 'r*');
sin = sin(:, 1 : 200);
sin = round(sin);