% [绘图]柱状图
subplot(2,1,1)
x=[5 2 1
    8 7 3
    9 8 6
    5 5 5
    4 3 2];
bar(x)
xlabel('X-axis');
ylabel('Y-axis');
title('第一子图');
subplot(2,1,2)
y=[5 2 1
    8 7 3
    9 8 6
    5 5 5
    4 3 2];
barh(y)
xlabel('X-axis');
ylabel('Y-axis');
title('第二子图');