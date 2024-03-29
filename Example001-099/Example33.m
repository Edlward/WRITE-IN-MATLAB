% 曲线转换按钮
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','Example33');
x=0:0.5:2*pi;
y=sin(x);
h=plot(x,y);
grid on
huidiao=[...
    'if i==1,',...
    'i=0;,',...
    'y=cos(x);,',...
    'delete(h),',...
    'set(hm,''string'',''正弦函数''),',...
    'h=plot(x,y);,',...
    'grid on,',...
    'else if i==0,',...
    'i=1;,',...
    'y=sin(x);,',...
    'set(hm,''string'',''余弦函数''),',...
    'delete(h),',...
    'h=plot(x,y);,',...
    'grid on,',...
    'end,',...
    'end'];
hm=uicontrol(gcf,'style','pushbutton',...
    'string','余弦函数',...
    'callback',huidiao);
i=1;
set(hm,'position',[250 20 60 20]);
set(gca,'position',[0.2 0.2 0.6 0.6])
title('按钮的使用')
hold on