% 整数规划之随机取样计算法
function [f,g]=Example128_mengte(x)
f=x(1)^2+x(2)^2+3*x(3)^2+4*x(4)^2+2*x(5)^2-8*x(1)-2*x(2)-3*x(3)-x(4)-2*x(5);
g(1)=sum(x)-400;
g(2)=x(1)+2*x(2)+2*x(3)+x(4)+6*x(5)-800;
g(3)=2*x(1)+x(2)+6*x(3)-200;
g(4)=x(3)+x(4)+5*x(5)-200;