% 条形图和阶梯形图
function Example18
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','Example18');
subplot(2,2,1)
x=-3:0.2:3;
y=exp(-x.*x);
bar(x,y)
title('2-D Bar Chart')
subplot(2,2,2)
x=-3:0.2:3;
y=exp(-x.*x);
bar3(x,y,'r')
title('3-D Bar Chart')
subplot(2,2,3)
x=-3:0.2:3;
y=exp(-x.*x);
stairs(x,y)
title('Stair chart')
subplot(2,2,4)
x=-3:0.2:3;
y=exp(-x.*x);
barh(x,y)
title('Horizontal Bar Chart')