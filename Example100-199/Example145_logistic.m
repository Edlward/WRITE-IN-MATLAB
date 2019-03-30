function y = Example145_logistic(y0, a, n)
y = zeros(n, 1); % 设y初始为n维零向量
y(1) = y0;
for i = 2: 1 :n
    y(i) = y(i-1)*(1+a-y(i-1));
end
