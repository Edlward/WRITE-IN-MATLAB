%Ŀ�꺯����Ϊת��Ϊ��С����ȡĿ�꺯������Ʊ������෴��
c=[-3;1;1];			
%���Բ���ʽԼ��
A=[1 -2 1;4 -1 -2];	
b=[11;-3];
%���Ե�ʽԼ��
Aeq=[-2 0 1];		
beq=[1];
%��Ʊ����ı߽�Լ�����������Ͻ磬������ub=[Inf;Inf;Inf]
lb=[0;0;0];			
ub=[Inf;Inf;Inf];
%�����Ž�x��Ŀ�꺯��ֵfval�����������exitflag��output��lambda
[x,fval,exitflag,output,lambda]=linprog(c,A,b,Aeq,beq,lb,ub)
