% GM(1, 1)ģ�ʹ���, �Ե�վһѵ������Ϊ����ʾԤ��Ч������ڲ���numΪԤ��ʱ������ǰ��ʵ�ʹ��ʸ������õ�������ѣ�����һ�����⡣
function [GM_train, MAE] = GM_1_1(num)
    syms a b;
    tic;
    c=[a b]';
    load('Station1_test.mat');% 1:2976 2977:5856  5857:8832 8833:11808 11809:14688
    GM_train(:, 1) = Station1_test(:,9);
    length_data = length(GM_train(:, 1));
%     load('Station1_train.mat');
%     GM_train(:, 1) = Station1_train(:,9); % ��ȡʵ�ʹ���������ΪGM_train�ĵ�һ������
%     length_data = length(GM_train(:, 1)); 
    n=num;
    P = 10;   % װ������
    
    for tmp = n+1 : length_data
        A = GM_train( tmp - n : tmp - 1, 1);
        A = A';
        B=cumsum(A);  % ԭʼ�����ۼ�

        for i=1:(n-1)
            C(i)=(B(i)+B(i+1))/2;  % �����ۼӾ���
        end
        % �������������ֵ
        D=A;D(1)=[];
        D=D';
        E=[-C;ones(1,n-1)];
        c=pinv(E*E')*E*D;
        c=c';
        a=c(1);b=c(2);
        % Ԥ���������
        F=[];F(1)=A(1);
        for i=2:(n+1)
            F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a ;
        end
        G=[];G(1)=A(1);
        for i=2:(n+1)
            G(i)=F(i)-F(i-1); %�õ�Ԥ�����������
        end
        GM_train(tmp, 2) = G(n+1); % GM_train�ڶ�������ΪԤ��ֵ
        if GM_train(tmp, 1) >= P * 0.03
            GM_train(tmp, 3) = abs(GM_train(tmp, 1)-GM_train(tmp, 2));
        else
            GM_train(tmp, 3) = 0; % GM_train����������Ϊǰ����֮��ľ���ֵ
        end
        GM_train(tmp, 4) = (GM_train(tmp, 1)-GM_train(tmp, 2))/GM_train(tmp, 1);
    end

    error = 0; % �ۼƾ���ֵ���
    count = 0; % �������������ݸ���
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