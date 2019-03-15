% 弹出式菜单
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','Example36');
x=0:0.5:2*pi;
y=sin(x);
h=plot(x,y);
grid on
hm=uicontrol(gcf,'style','popupmenu',...
    'string',...
    'sin(x)|cos(x)|sin(x)+cos(x)|exp(-sin(x))',...
    'position',[250 20 50 20]);
set(hm,'value',1)
huidiao=[...
    'v=get(hm,''value'');,',...
    'switch v,',...
    'case 1,',...
    'delete(h),',...
    'y=sin(x);,',...
    'h=plot(x,y);,',...
    'grid on,',...
    'case 2,',...
    'delete(h),',...
    'y=cos(x);,',...
    'h=plot(x,y);,',...
    'grid on,',...
    'case 3,',...
    'delete(h),',...
    'y=sin(x)+cos(x);,',...
    'h=plot(x,y);,',...
    'grid on,',...
    'case 4,',...
    'delete(h),',...
    'y=exp(-sin(x));,',...
    'h=plot(x,y);,',...
    'grid on,',...
    'end'];
set(hm,'callback',huidiao)
set(gca,'position',[0.2 0.2 0.6 0.6])
title('弹出式菜单的使用')
hold on