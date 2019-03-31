% [规划问题]非线性规划(典型)
% 详见MATLAB在数学建模中的应用 例2-8
clear
clc
X0=[1;1;1;1];
LB=[0;0;0;0];UB=[];
A=[];B=[];
Aeq=[];Beq=[];
[x,fval]=fmincon('Example127_FUN',X0,A,B,Aeq,Beq,LB,UB,'Example127_NONLCON')