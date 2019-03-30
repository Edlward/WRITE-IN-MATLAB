% [UICONTROL]单选框的使用
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','Example042');
x=0:0.5:2*pi;
y=sin(x);
plot(x,y);
grid on
set(gcf,'toolbar','none')
g=set(gca,'position',[0.2 0.2 0.6 0.6]);
huidiao1=[...
    'grid on,',...
    'set(box_on,''value'',1),',...
    'set(box_off,''value'',0),'];
huidiao2=[...
    'grid off,',...
    'set(box_off,''value'',1),',...
    'set(box_on,''value'',0)'];
box_on=uicontrol(gcf,'style','radio',...
    'position',[5 50 50 20],...
    'string','grid on',...
    'value',1,...
    'callback',huidiao1);
box_off=uicontrol(gcf,'style','radio',...
    'position',[5 20 50 20],...
    'string','grid off',...
    'value',0,...
    'callback',huidiao2);
title('无线按钮的使用')