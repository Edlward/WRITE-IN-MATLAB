%--------------------------------------------------------------------------
%                              数据的标准化变换
%--------------------------------------------------------------------------

% 调用rand函数产生一个10行，4列的随机矩阵，每列服从不同的均匀分布
x = [rand(10,1), 5*rand(10,1), 10*rand(10,1), 500*rand(10,1)]

% 调用zscore函数对x进行标准化变换（按列标准化），
% 返回变换后矩阵xz，以及矩阵x各列的均值构成的向量mu，各列的标准差构成的向量sigma
[xz,mu,sigma] = zscore(x)
mean(xz)  % 求标准化后矩阵xz的各列的均值
std(xz)  % 求标准化后矩阵xz的各列的标准差