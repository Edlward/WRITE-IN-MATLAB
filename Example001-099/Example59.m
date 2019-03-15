% 设置坐标轴纵横轴比
h0=figure('name','Example59');
h1=axes('parent',h0,...
  'position',[0.3 0.45 0.5 0.5],...
  'visible','off');
u1=uimenu('parent',h0,...
  'label','绘图',...
  'tag','u1',...
  'callback',[...
      '[x,y]=meshgrid(-8:0.5:8);,',...
      'r=sqrt(x.^2+y.^2)+eps;,',...
      'z=sin(r)./r;,',...
      'mesh(x,y,z),',...
      'shading interp,',...
      'axis normal']);
f1=uicontrol('parent',h0,...
  'units','points',...
  'listboxtop',0,...
  'position',[12 6 100 150],...
  'style','frame',...
  'tag','f1');
t1=uicontrol('parent',h0,...
  'units','points',...
  'backgroundcolor',[0.753 0.753 0.753],...
  'listboxtop',0,...
  'position',[19.5 130 72.75 16.5],...
  'string','坐标纵横比',...
  'style','text',...
  'tag','t1');
r1=uicontrol('parent',h0,...
  'units','points',...
  'backgroundcolor',[0.753 0.753 0.753],...
  'listboxtop',0,...
  'position',[19.5 110 72.75 16.5],...
  'string','axis equal',...
  'style','radiobutton',...
  'tag','r1',...
  'value',1,...
  'callback',[...
      'set(r1,''value'',1);,',...
      'set(r2,''value'',0);,',...
      'set(r3,''value'',0);,',...
      'set(r4,''value'',0);,',...
      'set(r5,''value'',0);,',...
      'axis equal']);
r2=uicontrol('parent',h0,...
  'units','points',...
  'backgroundcolor',[0.753 0.753 0.753],...
  'listboxtop',0,...
  'position',[19.5 85 72.75 16.5],...
  'string','axis square',...
  'style','radiobutton',...
  'tag','r2',...
  'value',0,...
  'callback',[...
      'set(r2,''value'',1);,',...
      'set(r1,''value'',0);,',...
      'set(r3,''value'',0);,',...
      'set(r4,''value'',0);,',...
      'set(r5,''value'',0);,',...
      'axis square']);
r3=uicontrol('parent',h0,...
  'units','points',...
  'backgroundcolor',[0.753 0.753 0.753],...
  'listboxtop',0,...
  'position',[19.5 60 72.75 16.5],...
  'string','axis image',...
  'style','radiobutton',...
  'tag','r3',...
  'value',0,...
  'callback',[...
      'set(r3,''value'',1);,',...
      'set(r2,''value'',0);,',...
      'set(r1,''value'',0);,',...
      'set(r4,''value'',0);,',...
      'set(r5,''value'',0);,',...
      'axis image']);
r4=uicontrol('parent',h0,...
  'units','points',...
  'backgroundcolor',[0.753 0.753 0.753],...
  'listboxtop',0,...
  'position',[19.5 35 72.75 16.5],...
  'string','axie vis3d',...
  'style','radiobutton',...
  'tag','r4',...
  'value',0,...
  'callback',[...
      'set(r4,''value'',1);,',...
      'set(r2,''value'',0);,',...
      'set(r3,''value'',0);,',...
      'set(r1,''value'',0);,',...
      'set(r5,''value'',0);,',...
      'axis vis3d']);
r5=uicontrol('parent',h0,...
  'units','points',...
  'backgroundcolor',[0.753 0.753 0.753],...
  'listboxtop',0,...
  'position',[19.5 10 72.75 16.5],...
  'string','axis auto',...
  'style','radiobutton',...
  'tag','r5',...
  'value',0,...
  'callback',[...
      'set(r5,''value'',1);,',...
      'set(r2,''value'',0);,',...
      'set(r3,''value'',0);,',...
      'set(r4,''value'',0);,',...
      'set(r1,''value'',0);,',...
      'axis auto']);
b1=uicontrol('parent',h0,...
  'units','points',...
  'backgroundcolor',[0.753 0.753 0.753],...
  'listboxtop',0,...
  'position',[12 243 72.75 30.75],...
  'string','关闭',...
  'tag','b1',...
  'callback','close');
b2=uicontrol('parent',h0,...
  'units','points',...
  'backgroundcolor',[0.753 0.753 0.753],...
  'listboxtop',0,...
  'position',[216.75 67.5 83.25 18.75],...
  'string','Colorbar',...
  'tag','b2',...
  'callback','colorbar');