% [Basic]MATLAB矩阵与数组
%%**************************************************************%%
a=2:2:20;  %通过“初值：步长：终值”的方式创立向量;默认步长为1
ones(4); %创建所有元素为1的矩阵
eye(5);  %创建单位矩阵
rand(2,3);   %创建2?3的均匀分布随机数矩阵
randperm(7);    %创建由1∶7构成的随机数列
% % 需要指出的是：每次运行随机函数都会得到不同的结果，
% % 这是因为默认状态下随机数的种子都不同。这也是随机
% % 数的意义所在。若要用函数产生相同的矩阵以验证操作
% % 的结果，可以按如下方法设置随机种子状态：
% % rand('state', 0);
% % randperm(7)
%%**************************************************************%%
C1=[ones(2,5)*6;rand(3,5)]; %矩阵A和B在竖直方向上合并得到矩阵C
C2=[ones(5,2) rand(5,3)];   %矩阵A和B在水平方向上合并得到矩阵C
%%**************************************************************%%
C1_3_5_sub=C1(3,4);  %二维矩阵C1的第3行第4列
% % MATLAB中对下标的标识是从1开始的，就是和我们平时在数学中
% % 使用的说法是一致的。这和其他一些编程语言从0开始标识是不同
C1_3_5_ind=C1((4-1)*5+3);    %二维矩阵C1的第3行第4列
% % 单下标与全下标的转换关系：以m*n的二维矩阵A为例，若全下标
% % 的元素位置是“第a行，第b列”，那么相应的单下标则为c=(b-1)*m+a
% % 在MATLAB中，有两个函数可以实现全下标和单下标的转换。
% % sub2ind：    根据全下标换算出单下标。
% % ind2sub：    根据单下标换算出全下标。
aa=[1 2 3;4 5 6];   %  创建测试矩阵
B=aa>3;      %  返回逻辑下标
c=aa(B);     %  逻辑下标寻访
d=aa(1,:);    %  通过使用冒号可以寻访全行元素
e=aa(:,2);    %  通过使用冒号可以寻访全列元素
f=aa(:);
g=aa(:,[1 3]);   %  寻访地址可以是向量，以同时寻访多个元素
%%**************************************************************%%