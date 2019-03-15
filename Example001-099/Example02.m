% 三角函数曲线（2）
function Example02
h0=figure('toolbar','none',...
    'position',[200 150 450 350],...
    'name','Example02');
x=-pi:0.05:pi;
y=sin(x)+cos(x);
plot(x,y,'-*r','linewidth',1);
grid on
xlabel('自变量X');
ylabel('函数值Y');
title('三角函数');