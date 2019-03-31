% [绘图]图像的注释
x = 0: 0.01: 2 * pi;
y = sin(10 * x);
plot(x, y);
xlabel('自变量x');
ylabel('自变量y');
title('y = sin10x 的图像');
gtext('put me here!!');
grid on; % 显示网格线
% grid off;　％　消除网格线
axis([1, 2, -1, 0]);