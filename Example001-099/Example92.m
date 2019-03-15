% surf,ezsurf画出x^2+(y-5)^2=16绕x轴旋转一周形成的曲面
% 因为这里的函数是隐函数， 
% 化成显函数后有两支，
%必须使用参数方程
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
% 对于其它的二次曲面，
% 如果可以写成 单支的显函数，
% 直接使用命令 ezmesh 或 ezsurf 画图，
% 否则必须先化成参数方程