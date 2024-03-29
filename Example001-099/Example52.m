% 可设置函数曲线图视角的用户界面
h0=figure('toolbar','none',...
  'position',[198 56 408 468],...
  'name','Example52');
h1=axes('parent',h0,...
  'position',[0.15 0.5 0.7 0.5],...
  'visible','off');
[x,y]=meshgrid(-8:0.5:8);
r=sqrt(x.^2+y.^2)+eps;
z=sin(r)./r;
fh=surf(x,y,z);
shading interp
view([-60 30])
fv=get(h1,'view');
fv2=fv;
camlight left
sh1=uicontrol('parent',h0,...
  'style','slider',...
  'max',1,...
  'min',-1,...
  'value',fv(1)/180,...
  'position',[20 150 200 20],...
  'callback',[...
      'fv(1)=90*get(sh1,''value'');,',...
      'set(h1,''view'',[fv(1) fv(2)]),',...
      'set(ed1,''string'',fv(1))']);   
text1=uicontrol('parent',h0,...
  'style','text',...
  'string','方位角的变化滑标',...
  'position',[20 170 200 20]);
sh2=uicontrol('parent',h0,...
  'style','slider',...
  'max',1,...
  'min',-1,...
  'value',fv(2)/180,...
  'position',[20 90 200 20],...
  'callback',[...
      'fv(2)=90*get(sh2,''value'');,',...
      'set(h1,''view'',[fv(1) fv(2)]),',...
      'set(ed2,''string'',fv(2))']);
text2=uicontrol('parent',h0,...              
  'style','text',...
  'string','仰角的变化滑标',...
  'position',[20 110 200 20]);
ed1=uicontrol('parent',h0,...
  'style','edit',...
  'string',fv(1),...
  'position',[30 30 50 20]);
text3=uicontrol('parent',h0,...
  'style','text',...
  'string','方位角的数值',...
  'position',[20 50 80 20]);
ed2=uicontrol('parent',h0,...
  'style','edit',...
  'string',fv(2),...
  'position',[150 30 50 20]);
text4=uicontrol('parent',h0,...
  'style','text',...
  'string','仰角的数值',...
  'position',[135 50 80 20]);
pf1=uicontrol('parent',h0,...
  'style','pushbutton',...
  'string','重置',...
  'position',[280 120 50 30],...
  'callback',[...
      'set(h1,''view'',fv2),',...
      'set(sh1,''value'',fv2(1)/180),',...
      'set(sh2,''value'',fv2(2)/180),',...
      'set(ed1,''string'',fv2(1)),',...
      'set(ed2,''string'',fv2(2))']);                  
pf2=uicontrol('parent',h0,...
  'style','pushbutton',...
  'string','关闭',...
  'position',[280 60 50 30],...
  'callback','close');