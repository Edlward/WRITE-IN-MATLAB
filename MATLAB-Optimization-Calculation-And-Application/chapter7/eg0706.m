H=[1 -1;-1 2]; 
c=[-2;-6];
A=[1 1;-1 2;2 1];
b=[2;2;3];
lb=zeros(2,1);
[x,fval,exitflag]=quadprog(H,c,A,b,[],[],lb)
