% 针对本问题改进的GM(1, 1)模型IGM(1, 1)代码, 以电站一测试数据为例演示预测效果。入口参数num为预测时依赖的前面实际功率个数。
function [GM_train, MAE] = IGM_1_1(num)
    syms a b;
    tic;
    c=[a b]';
    load('Station1_test.mat');% 1:2976 2977:5856  5857:8832 8833:11808 11809:14688
    GM_train(:, 1) = Station1_test(:,9);
    length_data = length(GM_train(:, 1));
%     load('Station1_train.mat');
%     GM_train(:, 1) = Station1_train(:,9);
%     length_data = length(GM_train(:, 1)); 
    n=num;
    P = 10;
    flag = 0;
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
        if GM_train(tmp, 1) >= P * 0.03
            if flag == 1
                GM_train(tmp, 2) = G(n+1);
            else
                GM_train(tmp, 2) = 2 * GM_train(tmp - 1, 1);
            end
            GM_train(tmp, 3) = abs(GM_train(tmp, 1)-GM_train(tmp, 2));
            GM_train(tmp, 4) = (GM_train(tmp, 1)-GM_train(tmp, 2))/GM_train(tmp, 1);
            flag = 1;
        else
            GM_train(tmp, 3) = 0;
            flag = 0;
        end
        
    end

    error = 0;
    count = 0;
    for tmp = n + 1 : length_data
        if GM_train(tmp, 3) > 0
            error = error + GM_train(tmp, 3)/P;
            count = count + 1;
        end
    end
    disp('AE = ');
    AE = error/count;
    disp(AE);
    toc;
end