% 控制小球运动速度的用户界面???
h0=figure('toolbar','none',...
  'position',[198 56 350 468],...
  'name','Example58');
h1=axes('parent',h0,...
  'position',[0.25 0.45 0.5 0.5],...
  'visible','off');
t=0:0.1:4*pi;
x=sin(t);
y=cos(t);
plot(x,y)
axis equal
axis off
h=line('color',[1 0 0],...
  'linestyle','-',...
  'xdata',0,...
  'ydata',1,...
  'markersize',20);
n=length(t);
i=1;
speed=0.01;
k=0;
b1huidiao=[...
      'k=0;,',...
      'while 1,',...
      'set(h,''xdata'',x(i),''ydata'',y(i));,',...
      'drawnow,',...
      'pause(speed),',...
      'i=i+1;,',...
      'if i>n,',...
      'i=1;,',...
      'end,',...
      'if k==1,',...
      'break,',...
      'end,',...
      'end'];
b1=uicontrol('parent',h0,...
  'units','points',...
  'tag','b1',...
  'style','pushbutton',...
  'string','开始',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[30 80 50 20],...
  'callback',b1huidiao);
b2=uicontrol('parent',h0,...
  'units','points',...
  'tag','b2',...
  'style','pushbutton',...
  'string','停止',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[100 80 50 20],...
  'callback','k=1;');
b3=uicontrol('parent',h0,...
  'units','points',...
  'tag','b3',...
  'style','pushbutton',...
  'string','关闭',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[170 80 50 20],...
  'callback',[...
      'k=1;,',...
      'close']);
s1=uicontrol('parent',h0,...
  'units','points',...
  'tag','s1',...
  'style','slider',...
  'value',50*speed,...
  'max',1,...
  'min',0,...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[30 115 190 20],...
  'callback',[...
      'm=get(s1,''value'');,',...
      'speed=m/50;']);
t1=uicontrol('parent',h0,...
  'units','points',...
  'tag','t1',...
  'style','text',...
  'fontsize',15,...
  'string','小球运动速度',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[30 135 190 20]);