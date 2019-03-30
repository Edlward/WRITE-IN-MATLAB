% [绘图]羽状图
subplot(2,1,1)
alpha=90:-10:0;
r=ones(size(alpha));
m=alpha*pi/180;
n=r*10;
[u,v]=pol2cart(m,n);
feather(u,v)
title('羽状图')
axis([0 20 0 10])
subplot(2,1,2)
t=0:0.5:10;
x=0.05+i;
y=exp(-x*t);
feather(y)
title('复数矩阵的羽状图')