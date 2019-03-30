% 绘制带参考平面的三维网格图
[x, y] = meshgrid(-2: 0.1: 2);
z = x.^2 + y.^3;
meshz(x, y, z);