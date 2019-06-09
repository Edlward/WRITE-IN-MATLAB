% GM(1, 1)模型代码, 以电站一训练数据为例演示预测效果。入口参数num为预测时依赖的前面实际功率个数。得到结果不佳，存在一定问题。
function [GM_train, MAE] = GM_1_1(num)
    syms a b;
    tic;
    c=[a b]';
    load('Station1_test.mat');% 1:2976 2977:5856  5857:8832 8833:11808 11809:14688
    GM_train(:, 1) = Station1_test(:,9);
    length_data = length(GM_train(:, 1));
%     load('Station1_train.mat');
%     GM_train(:, 1) = Station1_train(:,9); % 获取实际功率序列作为GM_train的第一列向量
%     length_data = length(GM_train(:, 1)); 
    n=num;
    P = 10;   % 装机功率
    
    for tmp = n+1 : length_data
        A = GM_train( tmp - n : tmp - 1, 1);
        A = A';
        B=cumsum(A);  % 原始数据累加

        for i=1:(n-1)
            C(i)=(B(i)+B(i+1))/2;  % 生成累加矩阵
        end
        % 计算待定参数的值
        D=A;D(1)=[];
        D=D';
        E=[-C;ones(1,n-1)];
        c=pinv(E*E')*E*D;
        c=c';
        a=c(1);b=c(2);
        % 预测后续数据
        F=[];F(1)=A(1);
        for i=2:(n+1)
            F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a ;
        end
        G=[];G(1)=A(1);
        for i=2:(n+1)
            G(i)=F(i)-F(i-1); %得到预测出来的数据
        end
        GM_train(tmp, 2) = G(n+1); % GM_train第二列向量为预测值
        if GM_train(tmp, 1) >= P * 0.03
            GM_train(tmp, 3) = abs(GM_train(tmp, 1)-GM_train(tmp, 2));
        else
            GM_train(tmp, 3) = 0; % GM_train第三列向量为前两者之差的绝对值
        end
        GM_train(tmp, 4) = (GM_train(tmp, 1)-GM_train(tmp, 2))/GM_train(tmp, 1);
    end

    error = 0; % 累计绝对值误差
    count = 0; % 符合条件的数据个数
    for tmp = n + 1 : length_data
        if GM_train(tmp, 3) > 0
            error = error + GM_train(tmp, 3)/P;
            count = count + 1;
        end
    end
    disp('MAE = ');
    disp(error/count);
    toc;
end