% surf,ezsurf����x^2+(y-5)^2=16��x����תһ���γɵ�����
% ��Ϊ����ĺ������������� 
% �����Ժ���������֧��
%����ʹ�ò�������
alpha=[0:0.1:2*pi]';
beta=0:0.1:2*pi;
x=4*cos(alpha)*ones(size(beta));
y=(5+4*sin(alpha))*cos(beta);
z=(5+4*sin(alpha))*sin(beta);
subplot(1,2,1)
surf(x,y,z)
X=@(alpha,beta)4*cos(alpha);
Y=@(alpha,beta)(5+4*sin(alpha))*cos(beta);
Z=@(alpha,beta)(5+4*sin(alpha))*sin(beta);
subplot(1,2,2)
ezsurf(X,Y,Z)
% ���������Ķ������棬
% �������д�� ��֧���Ժ�����
% ֱ��ʹ������ ezmesh �� ezsurf ��ͼ��
% ��������Ȼ��ɲ�������