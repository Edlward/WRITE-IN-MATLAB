% ���Ǻ������ߣ�1��
function Example01
h0=figure('toolbar','none',...
    'position',[198 56 350 300],...
    'name','Example01');
h1=axes('parent',h0,...
    'visible','off');
x=-pi:0.05:pi;
y=sin(x);
plot(x,y);
xlabel('�Ա���X');
ylabel('����ֵY');
title('SIN()��������');
grid on