%目标函数
c=[1;1;1;1;1;1];
%线性不等式约束
A=[1 -1 1 -1 0 0];
b=[1];
%线性等式约束
Aeq=[2 -2 0 0 1 -1];
beq=[3];
%设计变量的边界约束，由于无上界约束，故设置ub=[Inf;Inf;Inf;Inf;Inf;Inf];
lb=[0;0;0;0;0;0];
ub=[Inf;Inf;Inf;Inf;Inf;Inf];
%求最优解x和目标函数值fval
[x,fval]=linprog(c,A,b,Aeq,beq,lb,ub)
