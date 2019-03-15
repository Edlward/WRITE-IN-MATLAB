% 沿曲线移动的小球?????
h0=figure('toolbar','none',...
    'position',[198 56 408 468],...
    'name','Example32');
h1=axes('parent',h0,...
    'position',[0.15 0.45 0.7 0.5],...
    'visible','on');
t=0:pi/24:4*pi;
y=sin(t);
plot(t,y,'b')
n=length(t);
h=line('color',[0 0.5 0.5],...
    'linestyle','-',...
    'markersize',25,...
    'erasemode','xor');
k1=uicontrol('parent',h0,...
    'style','pushbutton',...
    'position',[80 100 50 30],...
    'string','Start',...
    'callback',[...
    'i=1;,',...
    'k=1;,',...
    'm=0;,',...
    'while 1,',...
    'if k==0,',...
    'break,',...
    'end,',...
    'if k==0,',...
    'set(h,''xdata'',t(i),''ydata'',y(i)),',...
    'drawnow;,',...
    'i=i+1;,',...
    'if i>n,',...
    'i=1;,',...
    'end,',...
    'end,',...
    'end']);
k2=uicontrol('parent',h0,...
    'style','pushbutton',...
    'position',[180 100 50 30],...
    'string','Stop',...
    'callback',[...
    'k=0;,',...
    'set(e1,''string'',m),',...
    'p=get(h,''xdata'');,',...
    'q=get(h,''ydata'');,',...
    'set(e2,''string'',p);,',...
    'set(e3,''string'',q)']);
k3=uicontrol('parent',h0,...
    'style','pushbutton',...
    'position',[280 100 50 30],...
    'string','Shutdn',...
    'callback','close');
e1=uicontrol('parent',h0,...
    'style','edit',...
    'position',[60 30 60 20]);
t1=uicontrol('parent',h0,...
    'style','text',...
    'string','循环次数 ',...
    'position',[60 50 60 20]);
e2=uicontrol('parent',h0,...
    'style','edit',...
    'position',[180 30 50 20]);
t2=uicontrol('parent',h0,...
    'style','text',...
    'string','终点的X坐标值',...
    'position',[155 50 100 20]);
e3=uicontrol('parent',h0,...
    'style','edit',...
    'position',[300 30 50 20]);
t3=uicontrol('parent',h0,...
    'style','text',...
    'string','终点的Y坐标值',...
    'position',[275 50 100 20]);