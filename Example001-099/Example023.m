% [绘图]视角的调整;在新版本下有点鸡肋
x=-5:0.5:5;
[x,y]=meshgrid(x);
r=sqrt(x.^2+y.^2)+eps;
z=sin(r)./r;
subplot(2,2,1)
surf(x,y,z)
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Figure1')
view(-37.5,30)
subplot(2,2,2)
surf(x,y,z)
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Figure2')
view(-37.5+90,30)
subplot(2,2,3)
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Figure3')
view(-37.5,60)
subplot(2,2,4)
surf(x,y,z)
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Figure4')
view(180,0)