% [拟合]求解函数未知参数
% 详见MATLAB在数学建模中的应用1.3.2薄膜渗透率的测定
tdata = linspace(100,1000,10);
cdata = 1e-05.*[454 499 535 565 590 610 626 639 650 659];
x0 = [0.2,0.05,0.05];
x = lsqcurvefit('Example123_curvefun',x0,tdata,cdata)
f = Example123_curvefun(x,tdata);
plot(tdata,cdata,'o',tdata,f,'r-')
