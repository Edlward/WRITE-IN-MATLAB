%% ��ջ���
clc
clear
warning off

%% �Ŵ��㷨����
maxgen=30;                         %��������
sizepop=100;                       %��Ⱥ��ģ
pcross=[0.6];                      %�������
pmutation=[0.01];                  %�������
lenchrom=[1 1 1 1 1];              %�����ִ�����
bound=[0 0.9*pi;0 0.9*pi;0 0.9*pi;0 0.9*pi;0 0.9*pi];  %������Χ

%% �����ʼ��
individuals=struct('fitness',zeros(1,sizepop), 'chrom',[]);  %��Ⱥ�ṹ��
avgfitness=[];                                               %��Ⱥƽ����Ӧ��
bestfitness=[];                                              %��Ⱥ�����Ӧ��
bestchrom=[];                                                %��Ӧ�����Ⱦɫ��
% ��ʼ����Ⱥ
for i=1:sizepop
    individuals.chrom(i,:)=Code(lenchrom,bound);       %�����������
    x=individuals.chrom(i,:);
    individuals.fitness(i)=fun(x);                     %������Ӧ��
end

%����õ�Ⱦɫ��
[bestfitness bestindex]=min(individuals.fitness);
bestchrom=individuals.chrom(bestindex,:);  %��õ�Ⱦɫ��
avgfitness=sum(individuals.fitness)/sizepop; %Ⱦɫ���ƽ����Ӧ��
% ��¼ÿһ����������õ���Ӧ�Ⱥ�ƽ����Ӧ��
trace=[];

%% ������ʼ
for i=1:maxgen
    
    % ѡ�����
    individuals=Select(individuals,sizepop);
    avgfitness=sum(individuals.fitness)/sizepop;
    % �������
    individuals.chrom=Cross(pcross,lenchrom,individuals.chrom,sizepop,bound);
    % �������
    individuals.chrom=Mutation(pmutation,lenchrom,individuals.chrom,sizepop,[i maxgen],bound);
    
    if mod(i,10)==0
        individuals.chrom=nonlinear(individuals.chrom,sizepop);
    end
    
    % ������Ӧ��
    for j=1:sizepop
        x=individuals.chrom(j,:);
        individuals.fitness(j)=fun(x);
    end
    
    %�ҵ���С�������Ӧ�ȵ�Ⱦɫ�弰��������Ⱥ�е�λ��
    [newbestfitness,newbestindex]=min(individuals.fitness);
    [worestfitness,worestindex]=max(individuals.fitness);
    % ������һ�ν�������õ�Ⱦɫ��
    if bestfitness>newbestfitness
        bestfitness=newbestfitness;
        bestchrom=individuals.chrom(newbestindex,:);
    end
    individuals.chrom(worestindex,:)=bestchrom;
    individuals.fitness(worestindex)=bestfitness;
    
    avgfitness=sum(individuals.fitness)/sizepop;
    
    trace=[trace;avgfitness bestfitness]; %��¼ÿһ����������õ���Ӧ�Ⱥ�ƽ����Ӧ��
end
%��������

%% �����ʾ
figure
[r c]=size(trace);
plot([1:r]',trace(:,1),'r-',[1:r]',trace(:,2),'b--');
title(['����ֵ����  ' '��ֹ������' num2str(maxgen)],'fontsize',12);
xlabel('��������','fontsize',12);ylabel('����ֵ','fontsize',12);
legend('����ƽ��ֵ','�������ֵ','fontsize',12);
ylim([1.5 8])
disp('����ֵ                   ����');
% ������ʾ
disp([bestfitness x]);
grid on