% [UICONTROL]曲线色彩的修改
h0=figure('toolbar','none',...
  'position',[198 56 408 468],...
  'name','Example046');
h1=axes('parent',h0,...
  'position',[0.15 0.45 0.7 0.5],...
  'visible','on');
x=0:0.1:2*pi;
k=plot(x,sin(x));
xlabel('自变量X');
ylabel('函数值Y');
title('图形色彩改变');
p1=uicontrol('parent',h0,...
  'style','pushbutton',...
  'backgroundcolor','r',...
  'position',[60 100 50 30],...
  'callback','set(k,''color'',''r'')');
p2=uicontrol('parent',h0,...
  'style','pushbutton',...
  'backgroundcolor','g',...
  'position',[170 100 50 30],...
  'callback','set(k,''color'',''g'')');
p3=uicontrol('parent',h0,...
  'style','pushbutton',...
  'backgroundcolor','b',...
  'position',[280 100 50 30],...
  'callback','set(k,''color'',''b'')');
p4=uicontrol('parent',h0,...
  'style','pushbutton',...
  'backgroundcolor',[1 1 1],...
  'fontsize',20,...
  'fontweight','demi',...
  'string','关闭',...
  'position',[150 30 80 60],...
  'callback','close');
t1=uicontrol('parent',h0,...
  'style','text',...
  'string','红色',...
  'fontsize',12,...
  'fontweight','demi',...
  'position',[60 120 50 20]);
t2=uicontrol('parent',h0,...
  'style','text',...
  'string','绿色',...
  'fontsize',12,...
  'fontweight','demi',...
  'position',[170 120 50 20]);
t3=uicontrol('parent',h0,...
  'style','text',...
  'string','蓝色',...
  'fontsize',12,...
  'fontweight','demi',...
  'position',[280 120 50 20]);