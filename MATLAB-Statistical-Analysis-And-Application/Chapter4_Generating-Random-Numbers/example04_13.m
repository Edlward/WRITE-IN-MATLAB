%--------------------------------------------------------------------------
%                 ����mvnrnd�������ɶ�Ԫ��̬�ֲ������
%--------------------------------------------------------------------------

mu = [10  20];    % ��Ԫ��̬�ֲ��ľ�ֵ����
sigma = [1  3; 3  16];    % ��Ԫ��̬�ֲ���Э�������
% ����mvnrnd��������10000���Ԫ��̬�ֲ������
xy = mvnrnd(mu, sigma, 10000);
hist3(xy, [15, 15]);    % ���ƶ�Ԫ��̬�ֲ��������Ƶ��ֱ��ͼ
xlabel('X')       % ΪX��ӱ�ǩ
ylabel('Y')       % ΪY��ӱ�ǩ
zlabel('Ƶ��')     % ΪZ��ӱ�ǩ