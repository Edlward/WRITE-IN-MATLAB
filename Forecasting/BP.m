tic;
load('Station1_train');
loader = 1:66861;
E = Station1_train(loader, 1);
 E = E';
V = Station1_train(loader, 2);
 V = V';
cos_theta = Station1_train(loader, 3);
 cos_theta = cos_theta';
sin_theta = Station1_train(loader, 4);
 sin_theta = sin_theta';
T = Station1_train(loader, 5);
 T = T';
P = Station1_train(loader, 6);
 P = P';
H = Station1_train(loader, 7);
 H = H';
POWER = Station1_train(loader, 9);
POWER = POWER';

p=[E;V;cos_theta;sin_theta;T;P;H];  %输入数据矩阵
t=POWER;         %目标数据矩阵
%利用premnmx函数对数据进行归一化
[pn,minp,maxp,tn,mint,maxt]=premnmx(p,t); % 对于输入矩阵p和输出矩阵t进行归一化处理
dx=[-1,1;-1,1;-1,1;-1,1;-1,1;-1,1;-1,1];                   %归一化处理后最小值为-1，最大值为1
%BP网络训练
net=newff(dx,[7,8,1],{'tansig','tansig','purelin'},'traingdx'); %建立模型，并用梯度下降法训练．
net.trainParam.show=1000;               %1000轮回显示一次结果
net.trainParam.Lr=0.05;                 %学习速度为0.05
net.trainParam.epochs=100000;           %最大训练轮回为50000次
net.trainParam.goal=0.05;     %均方误差
net=train(net,pn,tn);                   %开始训练，其中pn,tn分别为输入输出样本
%利用原始数据对BP网络仿真
an=sim(net,pn);           %用训练好的模型进行仿真
a=postmnmx(an,mint,maxt); % 把仿真得到的数据还原为原始的数量级；
% 本例因样本容量有限使用训练数据进行测试，通常必须用新鲜数据进行测试
% newk=a(1,:);
% x=1:length(newk);
% MAE=0;
% for i = 1:length(x)
%     if POWER(i) > 0.03*10
%         MAE=MAE+abs(newk(i)-POWER(i))/10;
%     end
% end
% MAE=MAE/length(x);
% plot(x,newk,'r-o',x,POWER,'b--+')    %绘值对比图；
% legend('网络输出功率','实际功率');
% xlabel('时间');ylabel('功率');
% disp('MAE = ');disp(MAE);

load('Station1_test');
% 1:2976 2977:5856  5857:8832 8833:11808 11809:14688
loader = 1:11808;
E1 = Station1_test(loader, 1);
 E1 = E1';
V1 = Station1_test(loader, 2);
 V1 = V1';
cos_theta1 = Station1_test(loader, 3);
 cos_theta1 = cos_theta1';
sin_theta1 = Station1_test(loader, 4);
 sin_theta1 = sin_theta1';
T1 = Station1_test(loader, 5);
 T1 = T1';
P1 = Station1_test(loader, 6);
 P1 = P1';
H1 = Station1_test(loader, 7);
 H1 = H1';
POWER1 = Station1_test(loader, 9);
 POWER1 = POWER1';

p1=[E1;V1;cos_theta1;sin_theta1;T1;P1;H1];  %输入数据矩阵
p1n=tramnmx(p1,minp,maxp);
anewn=sim(net,p1n); 
anew=postmnmx(anewn,mint,maxt);
newk1=anew(1,:);
x1=1:length(newk1);
MAE1=0;
for j = 1:length(x1)
    if POWER1(j)>10*0.03
        MAE1=MAE1+abs(newk1(j)-POWER1(j))/10;
    end
end

MAE1=MAE1/length(x1);
plot(x1,newk1,'r-o',x1,POWER1,'b--+')    % 绘值对比图；
legend('网络输出功率','实际功率');
xlabel('时间');ylabel('功率');
disp(MAE1);
toc;