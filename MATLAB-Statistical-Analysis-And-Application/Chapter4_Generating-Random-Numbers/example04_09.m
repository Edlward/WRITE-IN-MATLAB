%--------------------------------------------------------------------------
%                  �����Ա�crnd�����������Ƿֲ������
%--------------------------------------------------------------------------

pdffun = 'x*(x>=0 & x<1)+(2-x)*(x>=1 & x<2)';    % �ܶȺ�������ʽ
% ����crnd��������1000������ָ��һԪ�����ֲ��������
x = crnd(pdffun, [0 2], 1000, 1);
[fp,xp] = ecdf(x);      % ���㾭���ۻ����ʷֲ�����ֵ
ecdfhist(fp, xp, 50);   % ����Ƶ��ֱ��ͼ
hold on
fplot(pdffun, [0 2], 'r')    % ������ʵ�ܶȺ�������
xlabel('x');       % ΪX��ӱ�ǩ
ylabel('f(x)');    % ΪY��ӱ�ǩ
legend('Ƶ��ֱ��ͼ', '�ܶȺ�������')    % Ϊͼ�μӱ�ע��