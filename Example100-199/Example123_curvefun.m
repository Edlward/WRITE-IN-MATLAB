function f = Example123_curvefun(x,tdata)
f = x(1)+x(2)*exp(-0.02*x(3)*tdata);
% 其中,x(1)=a;x(2)=b;x(3)=k;