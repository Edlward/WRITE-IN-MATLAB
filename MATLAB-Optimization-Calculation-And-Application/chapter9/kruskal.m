%Kruskal算法
%b-图的边权矩阵
%T-最小生成树的边集合
%v-最小生成树的邻接矩阵
%c-最小生成树的权
%j-迭代的次数
%k-已经被选入生成树的边数

function [T,v,c]=kruskal(b)
%根据边权矩阵求出图的边数
m=size(b,1); 
%根据边权矩阵求出图的顶点数，注意此处顶点的标号需要以自然数序
n=max(b(1:2*m)); 
%整理边权矩阵让其按照权值由小到大的次序重新排列
[B,index]=sortrows(b,3);
B=B';
%数据的初始化
t=1:n;
k=0;
T=[];
c=0;
%更新T,c,t(i)
for i=1:m
    if t(B(1,i))~=t(B(2,i))  %判断第i条边是否与树中的边形成圈
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
%根据最小生成树的边集合构造邻接矩阵
v=zeros(n);
k=size(T,2);
for i=1:k
    v(T(2*i-1),T(2*i))=1;
    v(T(2*i),T(2*i-1))=1;
end
