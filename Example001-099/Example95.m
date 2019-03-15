% �� Matlab ��ͼ�������� Interpreter ������ֵΪ latex������ʹ����ѧ��ʽ
% ����y=sin(x),y=sin(x+pi/3)+2,y=cos(x)
x=-2*pi:0.1:2*pi;
y1=sin(x);
y2=sin(x+pi/3)+2;
y3=cos(x);
plot(x,y1,'-');
hold on %ͼ�α�������
plot(x,y2,'*-');
plot(x,y3,'-o');
h=legend('sin($x$)','sin($x+\frac{\pi}{3}$)','cos($x$)') %latex format display
set(h,'Interpreter','latex')
xlabel('$x$','Interpreter','latex')
ylabel('$y$','Interpreter','latex')