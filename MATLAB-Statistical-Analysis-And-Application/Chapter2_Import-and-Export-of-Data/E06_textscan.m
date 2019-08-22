%--------------------------------------------------------------------------
%                    ����textscan������ȡ�ļ��е�����
%--------------------------------------------------------------------------

fid = fopen('examp02_13.txt');    % ���ļ�examp02_13.txt�������ļ���ʶ��fid
C = textscan(fid, '%s %s %f32 %d8 %u %f %f %s')    % ��ָ����ʽ��ȡ�ļ�������
fclose(fid);    % �ر��ļ�

fid = fopen('examp02_08.txt','r');    % ��ֻ����ʽ���ļ�examp02_08.txt
fgets(fid);    % ��ȡ�ļ��ĵ�1��
fgets(fid);    % ��ȡ�ļ��ĵ�2��
% ����textscan������ָ����ʽ���ļ�examp02_08.txt�ĵ�3�п�ʼ��ȡ���ݣ�
% ������ȡ�ľ�����ͬ�������͵�����Ԫ�����ӳ�һ��Ԫ������A
A = textscan(fid, '%f %f %f %f %f %f', 'CollectOutput', 1)
fgets(fid);    % ��ȡ�ļ��ĵ�6��
fgets(fid);    % ��ȡ�ļ��ĵ�7��
% ����textscan������ָ����ʽ���ļ�examp02_08.txt�ĵ�8�п�ʼ��ȡ���ݣ�
% ������ȡ�ľ�����ͬ�������͵�����Ԫ�����ӳ�һ��Ԫ������B
B = textscan(fid, '%f %f %f', 'CollectOutput', 1)
fclose(fid);    % �ر��ļ�

fid = fopen('examp02_09.txt','r');    % ��ֻ����ʽ���ļ�examp02_09.txt
% ����textscan������ָ����ʽ���ļ�examp02_09.txt�ж�ȡ���ݣ��ÿո�(' ')���ָ���
% ������ȡ�ľ�����ͬ�������͵�����Ԫ�����ӳ�һ��Ԫ������A
A = textscan(fid, '%f %*s %f %*s %f %*s %f %*s','delimiter',...
' ', 'CollectOutput', 1)
A{:}    % �鿴A�е�����
fclose(fid);    % �ر��ļ�

fid = fopen('examp02_10.txt','r');    % ��ֻ����ʽ���ļ�examp02_10.txt
% ����textscan������ָ����ʽ���ļ�examp02_10.txt�ж�ȡ���ݣ���'-,:'���ָ���
% ������ȡ�ľ�����ͬ�������͵�����Ԫ�����ӳ�һ��Ԫ������A
A = textscan(fid, '%d %d %d %d %d %f %*s','delimiter','-,:','CollectOutput',1)
A{1,1}    % �鿴A�ĵ�1�У���1�е�Ԫ���е�����
fclose(fid);    % �ر��ļ�

fid = fopen('examp02_11.txt','r');    % ��ֻ����ʽ���ļ�examp02_11.txt
% ����textscan������ָ����ʽ���ļ�examp02_11.txt�ж�ȡ���ݣ��ÿո�(' ')���ָ���
% ������ȡ�ľ�����ͬ�������͵�����Ԫ�����ӳ�һ��Ԫ������A
A = textscan(fid, '%*s %s %*s %d %*s %d %*s %d %*s',...
'delimiter', ' ', 'CollectOutput',1)
A{1,1}    % �鿴A�ĵ�1�У���1�е�Ԫ���е�����
A{1,2}    % �鿴A�ĵ�1�У���2�е�Ԫ���е�����
fclose(fid);    % �ر��ļ�