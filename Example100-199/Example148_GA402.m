%�����򣺱���������Ŵ��㷨����������
%���ϴν���������õ���������Ⱥ��Ϊ�´�����ĳ�ʼ��Ⱥ
clc;
close all;
clear;
%�����Ĵ���
T=100;
optionsOrigin=gaoptimset('Generations',T/2);
[~,~,~,~,finnal_pop]=ga(@ch14_2f,2,optionsOrigin);
%���еڶ��ν�������
options1=gaoptimset('Generations',T/2,'InitialPopulation',finnal_pop,...
    'PlotFcns',@gaplotbestf);
[x,fval,reason,output,finnal_pop]=ga(@ch14_2f,2,options1);
Bestx=x;
BestFval=fval;
Display = ['Bestx=', num2str(x(1)), ' ', num2str(x(2)),'  BestFval=',num2str(fval)];
disp(Display);


%% �Ӻ�������Ӧ�Ⱥ���ͬʱҲ��Ŀ�꺯��,�����洢����Ϊch14_2f.m
function f=ch14_2f(x)
    g1=1.5+x(1)*x(2)-x(1)-x(2);
    g2=-x(1)*x(2);
    if(g1>0||g2>10)
        f=100;
    else
        f=exp(x(1))*(4*x(1)^2+2*x(2)^2+4*x(1)*x(2)+2*x(2)+1);
    end
end