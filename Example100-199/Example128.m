% [规划问题]整数规划之随机取样计算法
% 详见MATLAB在数学建模中的应用 例2-12
rand('state',sum(clock));
p0=0;
tic
for i=1:10^5
    x=99*rand(5,1);
    x1=floor(x);x2=ceil(x);
    [f,g]=Example128_mengte(x1);
    if sum(g<=0)==4
        if p0<=f
            x0=x1;p0=f;
        end
    end
    [f,g]=Example128_mengte(x2);
    if sum(g<=0)==4
        if p0<=f
            x0=x2;p0=f;
        end
    end
end
x0,p0
toc