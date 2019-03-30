% 极坐标下函数绘图
theta = 0: 0.1: 10 * pi;
r = 3 * (1 + theta.^2);
polar(theta, r);