% plot 不能绘制隐函数,参数方程形式的图像，可以使用符号函数绘图命令
ezplot('sin(1/x)', [1/pi, 2]);
hold on;
ezplot('x.^2 + y.^3 - 1', [-10, 10, -10, 10]);
hold on;
ezplot('3 * sin(t) - t', '4 * cos(t) + t', [-3, 3]);
hold on;