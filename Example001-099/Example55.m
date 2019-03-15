% 查询日期
h0=figure('toolbar','none',...
  'position',[198 56 408 468],...
  'name','Example55');
h1=axes('parent',h0,...
  'position',[0.15 0.5 0.7 0.5],...
  'visible','off');
huidiao=[...
      'yearnum=str2num(get(edit1,''string''));,',...
      'monthnum=str2num(get(edit2,''string''));,',...
      'daynum=str2num(get(edit3,''string''));,',...
      'monthday=[0 31 28 31 30 31 30 31 31 30 31 30 31];,',...
      'dyear=yearnum-2000;,',...
      'beishu=fix(dyear/4);,',...
      'yushu=rem(yearnum,4);,',...
      'if yushu==0,',...
      'monthday(3)=29;,',...
      'end,',...
      'mday=0;,',...
      'for i=1:monthnum,',...
      'mday=monthday(i)+mday;,',...
      'end,',...
      'yearday=mday+daynum-1;,',...
      'noweek=fix(yearday/7);,',...
      'set(edit5,''string'',[''第'',num2str(noweek),''周'']);,',...
      'if dyear>0,',...
      'if yushu==0,',...
      'beishu=beishu-1;,',...
      'end,',...
      'dday=yearday+365*dyear+beishu+1;,',...
      'end,',...
      'if dyear<=0,',...
      'dday=365*dyear+yearday+beishu;,',...
      'end,',...
      'mweek=rem(dday,7)+7;,',...
      'if mweek==8,',...
      'set(edit4,''string'',''Sunday'');,',...
      'end,',...
      'if mweek==9,',...
      'set(edit4,''string'',''Monday'');,',...
      'end,',...
      'if mweek==10,',...
      'set(edit4,''string'',''Tuesday'');,',...
      'end,',...
      'if mweek==11,',...
      'set(edit4,''string'',''Wednesday'');,',...
      'end,',...
      'if mweek==12,',...
      'set(edit4,''string'',''Thursday'');,',...
      'end,',...
      'if mweek==13,',...
      'set(edit4,''string'',''Friday'');,',...
      'end,',...
      'if mweek==7,',...
      'set(edit4,''string'',''Saturday'');,',...
      'end,',...
      'if mweek==6,',...
      'set(edit4,''string'',''Friday'');,',...
      'end,',...
      'if mweek==5,',...
      'set(edit4,''string'',''Thursday'');,',...
      'end,',...
      'if mweek==4,',...
      'set(edit4,''string'',''Wednesday'');,',...
      'end,',...
      'if mweek==3,',...
      'set(edit4,''string'',''Tuesday'');,',...
      'end,',...
      'if mweek==2,',...
      'set(edit4,''string'',''Monday'');,',...
      'end,',...
      'if mweek==1,',...
      'set(edit4,''string'',''Sunday'');,',...
      'end'];
edit1=uicontrol('parent',h0,...
  'style','edit',...
  'horizontalalignment','right',...
  'position',[40 300 50 20]);
text1=uicontrol('parent',h0,...
  'style','text',...
  'string','年',...
  'horizontalalignment','left',...
  'position',[90 300 50 20]);
edit2=uicontrol('parent',h0,...
  'style','edit',...
  'horizontalalignment','right',...
  'position',[160 300 50 20]);
text2=uicontrol('parent',h0,...
  'style','text',...
  'string','月',...
  'horizontalalignment','left',...
  'position',[210 300 50 20]);
edit3=uicontrol('parent',h0,...
  'style','edit',...
  'horizontalalignment','right',...
  'position',[280 300 50 20]);
text3=uicontrol('parent',h0,...
  'style','text',...
  'string','日',...
  'horizontalalignment','left',...
  'position',[330 300 50 20]);
edit4=uicontrol('parent',h0,...
  'style','edit',...
  'horizontalalignment','left',...
  'position',[210 200 120 20]);
text4=uicontrol('parent',h0,...
  'style','text',...
  'string','查找的日期为',...
  'horizontalalignment','right',...
  'position',[110 200 100 20]);
edit5=uicontrol('parent',h0,...
  'style','edit',...
  'horizontalalignment','left',...
  'position',[210 100 120 20]);
text=uicontrol('parent',h0,...
  'style','text',...
  'string','该日处于',...
  'horizontalalignment','left',...
  'position',[160 100 50 20]);
button1=uicontrol('parent',h0,...
  'style','pushbutton',...
  'position',[80 40 80 30],...
  'string','开始',...
  'callback',huidiao);
button2=uicontrol('parent',h0,...
  'style','pushbutton',...
  'position',[220 40 80 30],...
  'string','关闭',...
  'callback','close');