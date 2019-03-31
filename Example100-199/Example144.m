% [微积分]求函数极限
syms x; % 定义符号变量
% example1
f = x * sin(1 / x);
limit(f, x, 0)
% example2
f = sin(1 / x);
limit(f, x, 0)
