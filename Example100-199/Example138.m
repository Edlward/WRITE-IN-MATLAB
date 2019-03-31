% [绘图]绘制三维曲面
x = -3: 0.1: 3;
y = 0: 0.1: 2 * pi;
[x, y] = meshgrid(x, y);
z = x.*sin(y) + 4 * x.*cos(y);
surf(x, y, z);
shading flat; % 使图像平滑