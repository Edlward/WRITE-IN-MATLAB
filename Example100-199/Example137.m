% 一张图上绘制多条曲线[以绘制参数ｘ变化时, z的图像为例]
x = -3: 0.1: 3;
y = 0: 0.1: 2 * pi;
[x, y] = meshgrid(x, y);
% meshgrid 产生一个以向量x为行，y为列的矩阵
z = x.^sin(y) + 4 * x.^cos(y);
plot3(x, y, z);
% 绘制x取不同值时，对应的y-z曲线
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');