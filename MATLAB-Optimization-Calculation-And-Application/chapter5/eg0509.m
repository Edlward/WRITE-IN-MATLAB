%目标函数所对应的设计变量的系数
c=[-20;-6;-8;-9];
%不等式约束
A=[10 6 5  2;
    7 2 2  4;
    2 1 1 10;
    0 -1 -1 1];
b=[19;11;12;0];
%用于intprog函数的设计变量的边界约束，由于为0-1规划，故设置上界为全1
lb=[0;0;0;0];
ub=[1;1;1;1];
%均要求为整数变量
M=1:4;
%判断是否整数的误差限
Tol=1e-8;
%调用intprog函数求最优解整数解x和目标函数在x处的值fval
[x,fval]=intprog(c,A,b,[],[],lb,ub,M,Tol)
%调用bintprog函数求最优解整数解x1和目标函数在x1处的值fval1
[x1,fval1]=bintprog(c,A,b)
