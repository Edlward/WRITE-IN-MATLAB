% [规划问题]求解二次规划
% 详见MATLAB在数学建模中的应用 例2-9
h=[4,-4;-4,8];
f=[-6;-3];
a=[1,1;4,1];b=[3;9];
[x,value]=quadprog(h,f,a,b,[],[],zeros(2,1))