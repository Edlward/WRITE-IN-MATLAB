%--------------------------------------------------------------------------
%                   ����dlmread������ȡ�ļ��е�����
%--------------------------------------------------------------------------

% ����dlmread������ȡ�ļ�examp02_03.txt�е�����
x = dlmread('examp02_03.txt')    % ���ض�ȡ�����ݾ���x

% ����dlmread������ȡ�ļ�examp02_03.txt�е����ݣ��ö���(',')���ָ������趨��ȡ�ĳ�ʼλ��
x = dlmread('examp02_03.txt', ',', 2, 3)    % ���ض�ȡ�����ݾ���x

% ����dlmread������ȡ�ļ�examp02_03.txt�е����ݣ��ö���(',')���ָ������趨��ȡ�ķ�Χ
x = dlmread('examp02_03.txt', ',', [1, 2, 2, 5])    % ���ض�ȡ�����ݾ���x

% ����dlmread������ȡ�ļ�examp02_04.txt�е����ݣ����ִ���
x = dlmread('examp02_04.txt')

% ����dlmread������ȡ�ļ�examp02_05.txt�е�����
x = dlmread('examp02_05.txt')    % ���ض�ȡ�����ݾ���x

% ����dlmread������ȡ�ļ�examp02_06.txt�е�����
x = dlmread('examp02_06.txt')    % ���ض�ȡ�����ݾ���x

% ����dlmread������ȡ�ļ�examp02_07.txt�е����ݣ����ִ���
x = dlmread('examp02_07.txt')

% ����dlmread������ȡ�ļ�examp02_07.txt�е����ݣ��ö���(',')���ָ������趨��ȡ�ĳ�ʼλ��
x = dlmread('examp02_07.txt', ',', 2,0)    % ���ض�ȡ�����ݾ���x

% ����dlmread������ȡ�ļ�examp02_08.txt�е����ݣ��ÿո�(' ')���ָ������趨��ȡ�ķ�Χ
x = dlmread('examp02_08.txt', ' ', [7,0,8,8])
x = x(:, 1:4:end)    % ��ȡ����x�ĵ�1��5��9��

% ����dlmread������ȡ�ļ�examp02_09.txt�е�����
x = dlmread('examp02_09.txt')    % ���ض�ȡ�ĸ�������x