% 数字操作
h0=figure('toolbar','none',...
  'position',[200 150 350 200],...
  'name','Example66');
e1=uicontrol('parent',h0,...
  'units','points',...
  'tag','e1',...
  'style','edit',...
  'backgroundcolor',[1 1 1],...
  'position',[20 90 80 20],...
  'fontsize',12,...
  'horizontalalignment','right');
e2=uicontrol('parent',h0,...
  'units','points',...
  'tag','e2',...
  'style','edit',...
  'backgroundcolor',[1 1 1],...
  'position',[160 90 80 20],...
  'fontsize',12,...
  'horizontalalignment','right');
t1=uicontrol('parent',h0,...
  'units','points',...
  'tag','t1',...
  'style','text',...
  'string','初始数值（十进制）：',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[15 110 90 20],...
  'fontsize',12,...
  'horizontalalignment','left');
t2=uicontrol('parent',h0,...
  'units','points',...
  'tag','t2',...
  'style','text',...
  'string','转换结果：',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[155 110 90 20],...
  'fontsize',12,...
  'horizontalalignment','left');
b1=uicontrol('parent',h0,...
  'units','points',...
  'tag','b1',...
  'style','pushbutton',...
  'string','二进制',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[30 50 50 20],...
  'callback',[...
      'k=get(e1,''string'');,',...
      'k2=str2num(k);,',...
      'bk=dec2bin(k2);,',...
      'set(e2,''string'',num2str(bk));']);
b2=uicontrol('parent',h0,...
  'units','points',...
  'tag','b2',...
  'style','pushbutton',...
  'string','清除',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[170 50 50 20],...
  'callback',[...
      'set(e1,''string'','''');,',...
      'set(e2,''string'','''');']);
b3=uicontrol('parent',h0,...
  'units','points',...
  'tag','b3',...
  'style','pushbutton',...
  'string','十六进制',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[30 15 50 20],...
  'callback',[...
      'k=get(e1,''string'');,',...
      'k3=str2num(k);,',...
      'hk=dec2hex(k3);,',...
      'set(e2,''string'',num2str(hk));']);
b4=uicontrol('parent',h0,...
  'units','points',...
  'tag','b4',...
  'style','pushbutton',...
  'string','关闭',...
  'backgroundcolor',[0.75 0.75 0.75],...
  'position',[170 15 50 20],...
  'callback','close'); 