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

p=[E;V;cos_theta;sin_theta;T;P;H];  %�������ݾ���
t=POWER;         %Ŀ�����ݾ���
%����premnmx���������ݽ��й�һ��
[pn,minp,maxp,tn,mint,maxt]=premnmx(p,t); % �����������p���������t���й�һ������
dx=[-1,1;-1,1;-1,1;-1,1;-1,1;-1,1;-1,1];                   %��һ���������СֵΪ-1�����ֵΪ1
%BP����ѵ��
net=newff(dx,[7,8,1],{'tansig','tansig','purelin'},'traingdx'); %����ģ�ͣ������ݶ��½���ѵ����
net.trainParam.show=1000;               %1000�ֻ���ʾһ�ν��
net.trainParam.Lr=0.05;                 %ѧϰ�ٶ�Ϊ0.05
net.trainParam.epochs=100000;           %���ѵ���ֻ�Ϊ50000��
net.trainParam.goal=0.05;     %�������
net=train(net,pn,tn);                   %��ʼѵ��������pn,tn�ֱ�Ϊ�����������
%����ԭʼ���ݶ�BP�������
an=sim(net,pn);           %��ѵ���õ�ģ�ͽ��з���
a=postmnmx(an,mint,maxt); % �ѷ���õ������ݻ�ԭΪԭʼ����������
% ������������������ʹ��ѵ�����ݽ��в��ԣ�ͨ���������������ݽ��в���
% newk=a(1,:);
% x=1:length(newk);
% MAE=0;
% for i = 1:length(x)
%     if POWER(i) > 0.03*10
%         MAE=MAE+abs(newk(i)-POWER(i))/10;
%     end
% end
% MAE=MAE/length(x);
% plot(x,newk,'r-o',x,POWER,'b--+')    %��ֵ�Ա�ͼ��
% legend('�����������','ʵ�ʹ���');
% xlabel('ʱ��');ylabel('����');
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

p1=[E1;V1;cos_theta1;sin_theta1;T1;P1;H1];  %�������ݾ���
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
plot(x1,newk1,'r-o',x1,POWER1,'b--+')    % ��ֵ�Ա�ͼ��
legend('�����������','ʵ�ʹ���');
xlabel('ʱ��');ylabel('����');
disp(MAE1);
toc;