% [绘图]PEAKS函数曲线
[x,y,z]=peaks(30);
subplot(2,1,1)
x=x(1,:);
y=y(:,1);
i=find(y>0.8&y<1.2);
j=find(x>-0.6&x<0.5);
z(i,j)=nan*z(i,j);
surfc(x,y,z)
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Figurel:surfc函数形成的曲面')
subplot(2,1,2)
x=x(1,:);
y=y(:,1);
i=find(y>0.8&y<1.2);
j=find(x>-0.6&x<0.5);
z(i,j)=nan*z(i,j);
surfl(x,y,z)
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Figure2:surfl函数围成的曲面')