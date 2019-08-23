%目标函数，为转化为极小，故取目标函数中设计变量的相反数
c=[-3;1;1];			
%线性不等式约束
A=[1 -2 1;4 -1 -2];	
b=[11;-3];
%线性等式约束
Aeq=[-2 0 1];		
beq=[1];
%设计变量的边界约束，由于无上界，故设置ub=[Inf;Inf;Inf]
lb=[0;0;0];			
ub=[Inf;Inf;Inf];
%求最优解x和目标函数值fval，且输出参数exitflag、output和lambda
[x,fval,exitflag,output,lambda]=linprog(c,A,b,Aeq,beq,lb,ub)
