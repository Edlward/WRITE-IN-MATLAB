% [Modeling]灰色预测GM(1,1)模型应用：长江水质的预测
clear
syms a b;
c=[a b]';
A=[174	179	183	189	207 234	220.5 256	270	285];
B=cumsum(A);  % 原始数据累加
n=length(A);
for i=1:(n-1)
    C(i)=(B(i)+B(i+1))/2;  % 生成累加矩阵
end
% 计算待定参数的值
D=A;D(1)=[];
D=D';
E=[-C;ones(1,n-1)];
c=(E*E')\(E*D);
c=c';
a=c(1);b=c(2);
% 预测后续数据
F=[];F(1)=A(1);
for i=2:(n+10)
    F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a ;
end
G=[];G(1)=A(1);
for i=2:(n+10)
    G(i)=F(i)-F(i-1); %得到预测出来的数据
end 
t1=1995:2004;
t2=1995:2014;
G, a, b % 输出预测值，发展系数和灰色作用量
plot(t1,A,'o',t2,G)  %原始数据与预测数据的比较
