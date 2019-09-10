clf reset 

set ( gcf,'defaultuicontrolfontsize',11)   % ���������������⡢�����С�������С��
set ( gcf, 'unit','normalized','position', [0.65,0.1,0.5,0.75]) 
set ( gcf,'defaultuicontrolunits','normalized') 
set(gcf,'defaultuicontrolfontname','None') 
set(gcf,'defaultuicontrolhorizontal','left') 

str = '����Ҷ�����Ŀ��ӻ�';
set(gcf,'menubar','none')
set(gcf,'name',str,'numbertitle','off');


h_axes_3d=axes('position',[0.1,0.40,0.55,0.55],'visible','on'); % axes���� �����������ĸ�axes����

h_axes_f=axes('position',[0.1,0.07,0.2,0.2],'visible','on');
h_axes_nh=axes('position',[0.7,0.07,0.2,0.2],'visible','on');
h_axes_zz=axes('position',[0.4,0.07,0.2,0.2],'visible','on');

draw_all(3,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz); % �Զ��庯�� draw_all() ���ڻ��������ĸ�ͼ��

background = ex_words;

H_file = uimenu(gcf,'Label','�ļ�'); % �˵�����
H_about = uimenu(gcf,'Label','����');

H_background = uimenu(H_about,'Label','ѡ�ⱳ��','callback','helpdlg(background,''ѡ�ⱳ��'')');
H_ME = uimenu(H_about,'Label','������Ϣ','callback','helpdlg({''By QIZHENKANG'';''SEU''},''������Ϣ'')');



H_save = uimenu(H_file,'Label','����ͼ��');  % ����ͼ��ѡ������
H_print = uimenu(H_file,'Label','��ӡԤ��','callback','printpreview');  % ����ͼ��ѡ������
H_exit = uimenu(H_file,'Label','�˳�','callback','close(gcf)');  % ����ͼ��ѡ������


H_save3d = uimenu(H_save,'Label','3dͼ��','callback','filesave(h_axes_3d)'); %�Զ��庯�� filesave() ����ͼ��
H_savef = uimenu(H_save,'Label','��Ƶ����ͼ��','callback','filesave(h_axes_f)');
H_savezz = uimenu(H_save,'Label','����г��ͼ��','callback','filesave(h_axes_zz)');
H_savenh = uimenu(H_save,'Label','���ͼ��','callback','filesave(h_axes_nh)');

% H_ex = uimenu(gcf,'Label','���');
% H_exgray=uimenu(H_ex,'Label','��ɫ����','callback','set(gcf,''Color'',[0.8 0.8 0.8])');
% H_exgrid=uimenu(H_ex,'Label','Grid','callback','grid on');


uipanel(gcf,'Title','��ѡ����Ҷչ���ļ�����','FontSize',12,'Position',[0.67,0.56,0.31,0.35]); % panel ����

hpop = uicontrol(gcf,'Style','popup','position',[0.77,0.67,0.13,0.12],'string','3��չ��|5��չ��|9��չ��|22��չ��');
hedit = uicontrol(gcf,'Style','edit','position',[0.77,0.63,0.045,0.030]);
uicontrol(gcf,'Style','text','position',[0.825,0.610,0.1,0.05],'String','��չ��');
hbutton = uicontrol( gcf,'Style','pushbutton','position',[0.7, 0.4, 0.25, 0.05],'string','�鿴����Ҷ������̬��Ϲ���');

hradio_one = uicontrol(gcf,'Style','radiobutton','position',[0.7,0.8,0.25,0.05],'string','ѡ��չ��������');
hradio_two = uicontrol(gcf,'Style','radiobutton','position',[0.7,0.67,0.25,0.05],'string','�Զ���չ��������');
set(hradio_one,'value',1);
set(hradio_two,'value',0);

set(hedit,'callback','axes(h_axes_3d);calledit( hedit, hpop,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz,hradio_one.Value)')
set(hpop,'callback','axes(h_axes_3d);calledit( hedit, hpop,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz,hradio_one.Value)')
set(hbutton,'callback','ex_fly_dt')

set(hradio_one,'callback','radio_one_Callback(hradio_one,hradio_two,hedit, hpop,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz)')
set(hradio_two,'callback','radio_two_Callback(hradio_one,hradio_two,hedit, hpop,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz)')

grid on;