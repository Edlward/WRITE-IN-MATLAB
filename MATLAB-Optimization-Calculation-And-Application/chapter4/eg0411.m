%目标函数，为转化为极小，故取目标函数中设计变量的相反数
c=[-1;-3;1];	
%线性等式约束		
Aeq=[1 1 2;-1 2 1];	
beq=[4;4];
%设计变量的边界约束，由于无上界，故设置ub=[Inf;Inf;Inf]
lb=[0;0;0];			
ub=[Inf;Inf;Inf];
%求最优解x和目标函数值fval，由于无线性不等式约束和边界约束，故设置A=[]，b=[]，
%且输出参数exitflag和output
[x,fval,exitflag,output]=linprog(c,[],[],Aeq,beq,lb,ub)
