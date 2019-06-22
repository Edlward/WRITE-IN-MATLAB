% Malthus模型dx/dt=r*x 
% => x(t)=x0*exp(r*t)
% 线性拟合ln(x)=ln(x0)+r*t
t = [1790 1800 1810 1820 1830 1840 1850 1860 1870 1880 1890 1900 ];
p = [3.9 5.3 7.2 9.6 12.9 17.1 23.2 31.4 38.6 50.2 62.9 76.0 ];
y = log(p); % 求ln(p)的函数值，取对数转化为线性拟合
a = polyfit(t, y, 1); % 用1次多项式来拟合数据t,y
z = polyval(a, t); % 求以a为系数的多项式在t处的函数值
z1 = exp(z);
r = a(1); disp(r); % r为自然增长率
plot(t, p, 'bo', t, z1, 'r');
xlabel('Time');
ylabel('Population');
legend('Actual Data', 'Theoretical Curve');