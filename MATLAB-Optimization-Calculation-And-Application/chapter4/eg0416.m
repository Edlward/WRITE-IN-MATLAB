%Ŀ�꺯��
c=[10;12;9;8;11;13];
%���Ե�ʽԼ��
Aeq=[1 1 1 0 0 0;
     0 0 0 1 1 1
     1 0 0 1 0 0
     0 1 0 0 1 0
     0 0 1 0 0 1];
beq=[35;55;26;38;26];
%��Ʊ����ı߽�Լ�����������Ͻ�Լ����������ub=[Inf;Inf;Inf;Inf;Inf;Inf]
lb=[0;0;0;0;0;0];
ub=[Inf;Inf;Inf;Inf;Inf;Inf];
%�����Ž�x��Ŀ�꺯��ֵfval�������޲���ʽԼ����������A=[]��b=[]
[x,fval]=linprog(c,[],[],Aeq,beq,lb,ub)