%ezmesh������Բ����(1/9)*x^2+(1/4)*y^2=1
x=@(alpha,t)3*cos(alpha);%����������̵���������
y=@(alpha,t)2*sin(alpha);
z=@(alpha,t)t;
ezmesh(x,y,z)