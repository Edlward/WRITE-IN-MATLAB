%目标函数，为转化为极小，故取目标函数中设计变量的相反数
c=[-600;-1000;-300;200];
%线性不等式约束
A=[2 3 0 0;3 4 0 0];
b=[120;240];
%线性等式约束
Aeq=[0 -2 1 1];
beq=[0];
%设计变量的边界约束，由于无上界，故设置ub=[Inf;Inf;Inf;Inf]
lb=[0;0;0;0];
ub=[Inf;Inf;50;Inf];
%求最优解x和目标函数值fval
[x,fval]=linprog(c,A,b,Aeq,beq,lb,ub)
