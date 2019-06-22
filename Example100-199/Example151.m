% Logistic模型dx/dt=r(x)*x=rx(1-x/x_m) 
% => x(t)=x_m/[1+(x_m/x_0-1)*exp(-r*t)]
% 用非线性拟合估计模型参数r和x_m
t = [1790 1800 1810 1820 1830 1840 1850 1860 1870 1880 1890 1900 1910 1920 1930 1940 1950 1960 1970 1980 1990];
p = [3.9 5.3 7.2 9.6 12.9 17.1 23.2 31.4 38.6 50.2 62.9 76.0 92.0 106.5 123.2 131.7 150.7 179.3 204.0 226.5 251.4];
t = t - 1780;
x0 = [150 0.15];
x = lsqcurvefit(@population, x0, t, p);
disp(['r=',num2str(x(1)),' x_m=', num2str(x(2))]);
p1 = population(x, t);
plot(t + 1780, p, 'o', t + 1780, p1, '-r*');
title('Fig: Logistic model fitting');
xlabel('Time');
ylabel('Population');
p2000 = population(x, 2000 - 1780);
legend('Actual Data', 'Theoretical Curve');


function g = population(x, t) % logistic
    g = x(1)./(1 + (x(1)/3.9 - 1)*exp(-x(2)*t));
    % x(1)为最大人口数量x_m,x(2)为增长率r
end