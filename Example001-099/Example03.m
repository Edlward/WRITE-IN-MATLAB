% 图形的叠加
function Example03
h0=figure('toolbar','none',...
    'position',[200 150 450 350],...
    'name','Example03');
x=-pi:0.05:pi;
y1=sin(x);
y2=cos(x);
plot(x,y1,'-*r',x,y2,'--og');
grid on
xlabel('自变量X');
ylabel('函数值Y');
title('三角函数');