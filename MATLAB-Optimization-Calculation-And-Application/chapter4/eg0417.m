%Ŀ�꺯��
c=[1;1;1;1;1;1];
%���Բ���ʽԼ��
A=[1 -1 1 -1 0 0];
b=[1];
%���Ե�ʽԼ��
Aeq=[2 -2 0 0 1 -1];
beq=[3];
%��Ʊ����ı߽�Լ�����������Ͻ�Լ����������ub=[Inf;Inf;Inf;Inf;Inf;Inf];
lb=[0;0;0;0;0;0];
ub=[Inf;Inf;Inf;Inf;Inf;Inf];
%�����Ž�x��Ŀ�꺯��ֵfval
[x,fval]=linprog(c,A,b,Aeq,beq,lb,ub)
