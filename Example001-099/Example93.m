% 绘制二元函数z=xy\sin(xy)的三维表面图
[x,y]=meshgrid([-3:0.2:3]);
z=(sin(x.*y)+eps)./(x.*y+eps);
subplot(2,2,1)
surf(x,y,z)%使用 surf 画图，要求 x,y,z 是同维数的矩阵
subplot(2,2,2)
ezsurf('sin(x*y)/(x*y)')%使用符号函数画图
Z=@(x,y)sin(x*y+eps)/(x*y+eps);%定义匿名函数
subplot(2,2,3)
ezsurf(Z)%使用匿名函数画图