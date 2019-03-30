% [绘图]三角函数曲线
% h0=figure('toolbar','none',...
%     'position',[198 56 350 300],...
%     'name','Example01');
% h1=axes('parent',h0,...
%     'visible','off');
x=-pi:0.05:pi;
y=sin(x);
plot(x,y,'-*r','linewidth',1);
xlabel('自变量X');
ylabel('函数值Y');
title('SIN()函数曲线');
grid on