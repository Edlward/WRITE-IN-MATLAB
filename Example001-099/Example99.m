% 复数：-8的全部立方根
a=-8;
r=a^(1/3) %MATLAB在直接计算的过程中给出的是-8在第一象限的根
m=[0,1,2];%  为3个方根而设
R=abs(a)^(1/3);%  模的开3次方
theta=(angle(a)+2*pi*m)/3;% -pi<theta<=pi的3个相位角
r=R*exp(i*theta)