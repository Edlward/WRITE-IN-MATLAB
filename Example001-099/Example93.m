% ���ƶ�Ԫ����z=xy\sin(xy)����ά����ͼ
[x,y]=meshgrid([-3:0.2:3]);
z=(sin(x.*y)+eps)./(x.*y+eps);
subplot(2,2,1)
surf(x,y,z)%ʹ�� surf ��ͼ��Ҫ�� x,y,z ��ͬά���ľ���
subplot(2,2,2)
ezsurf('sin(x*y)/(x*y)')%ʹ�÷��ź�����ͼ
Z=@(x,y)sin(x*y+eps)/(x*y+eps);%������������
subplot(2,2,3)
ezsurf(Z)%ʹ������������ͼ