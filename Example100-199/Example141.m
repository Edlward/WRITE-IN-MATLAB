% 用meshc(x, y, z) / surfc(x, y, z)绘制具有基本等高线的网格图
[x, y] = meshgrid(-2: 0.1: 2);
z = x.^2 + y.^3;
% meshc(x, y, z);
surfc(x, y, z);