% [绘图]绘制二元函数的三维网格图
x = -3: 0.1: 3;
y = 0: 0.1: 2 * pi;
[x, y] = meshgrid(x, y);
z = sin(x) + cos(y);
mesh(x, y, z);