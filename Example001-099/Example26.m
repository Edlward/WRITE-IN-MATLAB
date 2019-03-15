% 柱状图
function Example26
h0=figure('toolbar','none',...
    'position',[200 50 450 450],...
    'name','Example26');
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