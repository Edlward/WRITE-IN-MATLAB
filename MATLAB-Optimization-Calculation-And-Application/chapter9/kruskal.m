%Kruskal�㷨
%b-ͼ�ı�Ȩ����
%T-��С�������ı߼���
%v-��С���������ڽӾ���
%c-��С��������Ȩ
%j-�����Ĵ���
%k-�Ѿ���ѡ���������ı���

function [T,v,c]=kruskal(b)
%���ݱ�Ȩ�������ͼ�ı���
m=size(b,1); 
%���ݱ�Ȩ�������ͼ�Ķ�������ע��˴�����ı����Ҫ����Ȼ����
n=max(b(1:2*m)); 
%�����Ȩ�������䰴��Ȩֵ��С����Ĵ�����������
[B,index]=sortrows(b,3);
B=B';
%���ݵĳ�ʼ��
t=1:n;
k=0;
T=[];
c=0;
%����T,c,t(i)
for i=1:m
    if t(B(1,i))~=t(B(2,i))  %�жϵ�i�����Ƿ������еı��γ�Ȧ
        k=k+1;
        T(1:2,k)=B(1:2,i);
        c=c+B(3,i);
        tmin=min(B(1,i),B(2,i));
        tmax=max(B(1,i),B(2,i));
        for j=1:n
            if t(j)==tmax
                t(j)=min(tmin,t(tmin));
            end
        end
    end
    if k==n-1
        break;
    end
end
%������С�������ı߼��Ϲ����ڽӾ���
v=zeros(n);
k=size(T,2);
for i=1:k
    v(T(2*i-1),T(2*i))=1;
    v(T(2*i),T(2*i-1))=1;
end
