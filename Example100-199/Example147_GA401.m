%���������Ŵ��㷨���y=200*exp(-0.05*x).*sin(x)��[-2 2]�����ϵ����ֵ
clc;
clear;
close all;
global BitLength
global boundsbegin
global boundsend
bounds=[-2 2];%һά�Ա�����ȡֵ��Χ
precision=0.0001; %���㾫��
boundsbegin=bounds(:,1);
boundsend=bounds(:,2);
%�������������⾫��������Ҫ�೤��Ⱦɫ��
BitLength=ceil(log2((boundsend-boundsbegin)' ./ precision));
popsize=50; %��ʼ��Ⱥ��С
Generationnmax=12;  %������
pcrossover=0.90; %�������
pmutation=0.09; %�������
%������ʼ��Ⱥ
population=round(rand(popsize,BitLength));
%������Ӧ��,������Ӧ��Fitvalue���ۻ�����cumsump
[Fitvalue,cumsump]=fitnessfun(population);
Generation=1;
while Generation<Generationnmax+1
   for j=1:2:popsize 
      %ѡ�����
      seln=selection(population,cumsump);
      %�������
      scro=crossover(population,seln,pcrossover);
      scnew(j,:)=scro(1,:);
      scnew(j+1,:)=scro(2,:);
      %�������
      smnew(j,:)=mutation(scnew(j,:),pmutation);
      smnew(j+1,:)=mutation(scnew(j+1,:),pmutation);
   end
   population=smnew;  %�������µ���Ⱥ
   %��������Ⱥ����Ӧ��   
   [Fitvalue,cumsump]=fitnessfun(population);
   %��¼��ǰ����õ���Ӧ�Ⱥ�ƽ����Ӧ��
   [fmax,nmax]=max(Fitvalue);
   fmean=mean(Fitvalue);
   ymax(Generation)=fmax;
   ymean(Generation)=fmean;
   %��¼��ǰ�������Ⱦɫ�����
   x=transform2to10(population(nmax,:));
   %�Ա���ȡֵ��Χ��[-2 2],��Ҫ�Ѿ����Ŵ���������Ⱦɫ�����ϵ�[-2 2]����
  xx=boundsbegin+x*(boundsend-boundsbegin)/(power((boundsend),BitLength)-1);
   xmax(Generation)=xx;
   Generation=Generation+1;
end
Generation=Generation-1;
Bestpopulation=xx;
Besttargetfunvalue=targetfun(xx);
Display = ['Bestpopulation=', num2str(Bestpopulation), '  Besttargetfunvalue=',num2str(Besttargetfunvalue)];
disp(Display);
%���ƾ����Ŵ���������Ӧ�����ߡ�һ��أ����������������Ⱥ��ƽ����Ӧ���������
%Ӧ�������������໥��ͬ����̬����ʾ�㷨�������еú�˳����û�г����𵴣�������ǰ
%���£������Ӧ�ȸ����������ɴ���û�з�������������Ⱥ�Ѿ����졣
figure(1);
hand1=plot(1:Generation,ymax);
set(hand1,'linestyle','-','linewidth',1.8,'marker','*','markersize',6)
hold on;
hand2=plot(1:Generation,ymean);
set(hand2,'color','r','linestyle','-','linewidth',1.8,...
'marker','h','markersize',6)
xlabel('��������');ylabel('���/ƽ����Ӧ��');xlim([1 Generationnmax]);
legend('�����Ӧ��','ƽ����Ӧ��');
box off;hold off;

%% �ӳ��򣺼�����Ӧ�Ⱥ���, �������ƴ洢Ϊfitnessfun
function [Fitvalue,cumsump]=fitnessfun(population)
    global BitLength
    global boundsbegin
    global boundsend
    popsize=size(population,1);   %��popsize������
    for i=1:popsize
       x=transform2to10(population(i,:));  %��������ת��Ϊʮ����
        %ת��Ϊ[-2,2]�����ʵ��
    xx=boundsbegin+x*(boundsend-boundsbegin)/(power((boundsend),BitLength)-1); 
       Fitvalue(i)=targetfun(xx);  %���㺯��ֵ������Ӧ��
    end
    %����Ӧ�Ⱥ�������һ����С��������Ա㱣֤��Ⱥ��ӦֵΪ����
    Fitvalue=Fitvalue'+230;
    %����ѡ�����
    fsum=sum(Fitvalue);
    Pperpopulation=Fitvalue/fsum;
    %�����ۻ�����
    cumsump(1)=Pperpopulation(1);
    for i=2:popsize
       cumsump(i)=cumsump(i-1)+Pperpopulation(i);
    end
    cumsump=cumsump';
end

%% �ӳ����ж��Ŵ������Ƿ���Ҫ���н�������, �������ƴ洢ΪIfCroIfMut.m
function pcc=IfCroIfMut(mutORcro)
    test(1:100)=0;
    l=round(100*mutORcro);
    test(1:l)=1;
    n=round(rand*99)+1;
    pcc=test(n);
end

%% �ӳ�������Ⱥ�������,�������ƴ洢Ϊcrossover.m
function scro=crossover(population,seln,pc)
    BitLength=size(population,2);
    pcc=IfCroIfMut(pc);  %���ݽ�����ʾ����Ƿ���н��������1���ǣ�0���
    if pcc==1
       chb=round(rand*(BitLength-2))+1;  %��[1,BitLength-1]��Χ���������һ������λ
       scro(1,:)=[population(seln(1),1:chb) population(seln(2),chb+1:BitLength)];
       scro(2,:)=[population(seln(2),1:chb) population(seln(1),chb+1:BitLength)];
    else
       scro(1,:)=population(seln(1),:);
       scro(2,:)=population(seln(2),:);
    end
end

%% �ӳ�������Ⱥ����������������ƴ洢Ϊmutation.m
function snnew=mutation(snew,pmutation)
    BitLength=size(snew,2);
    snnew=snew;
    pmm=IfCroIfMut(pmutation);  %���ݱ�����ʾ����Ƿ���б��������1���ǣ�0���
    if pmm==1
       chb=round(rand*(BitLength-1))+1;  %��[1,BitLength]��Χ���������һ������λ
       snnew(chb)=abs(snew(chb)-1);
    end
end

%% �ӳ�������Ⱥѡ�����, �������ƴ洢Ϊselection.m
function seln=selection(population,cumsump)
    %����Ⱥ��ѡ����������
    for i=1:2
       r=rand;  %����һ�������
       prand=cumsump-r;
       j=1;
       while prand(j)<0
           j=j+1;
       end
       seln(i)=j; %ѡ�и�������
    end
end

%% �ӳ��򣺶����Ż����ֵ�򼫴�ֵ�������⣬Ŀ�꺯��������Ϊ��Ӧ�Ⱥ���
%�������ƴ洢Ϊtargetfun.m
function y=targetfun(x) %Ŀ�꺯��
    y=200*exp(-0.05*x).*sin(x);
end

%% �ӳ��򣺽�2������ת��Ϊ10������,�������ƴ洢Ϊtransform2to10.m
function x=transform2to10(Population)
    BitLength=size(Population,2);
    x=Population(BitLength);
    for i=1:BitLength-1
       x=x+Population(BitLength-i)*power(2,i);
    end
end
