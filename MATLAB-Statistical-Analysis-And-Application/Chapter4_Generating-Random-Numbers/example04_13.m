%--------------------------------------------------------------------------
%                 调用mvnrnd函数生成二元正态分布随机数
%--------------------------------------------------------------------------

mu = [10  20];    % 二元正态分布的均值向量
sigma = [1  3; 3  16];    % 二元正态分布的协方差矩阵
% 调用mvnrnd函数生成10000组二元正态分布随机数
xy = mvnrnd(mu, sigma, 10000);
hist3(xy, [15, 15]);    % 绘制二元正态分布随机数的频数直方图
xlabel('X')       % 为X轴加标签
ylabel('Y')       % 为Y轴加标签
zlabel('频数')     % 为Z轴加标签