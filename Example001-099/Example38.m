% 多选菜单
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','Example38');
[x,y]=meshgrid(-8:0.5:8);
r=sqrt(x.^2+y.^2)+eps;
z=sin(r)./r;
h0=mesh(x,y,z);
hlist=uicontrol(gcf,'style','listbox',...
    'string','default|spring|summer|autumn|winter',...
    'max',5,...
    'min',1,...
    'position',[20 20 80 100],...
    'callback',[...
    'k=get(hlist,''value'');,',...
    'switch k,',...
    'case 1,',...
    'colormap default,',...
    'case 2,',...
    'colormap spring,',...
    'case 3,',...
    'colormap summer,',...
    'case 4,',...
    'colormap autumn,',...
    'case 5,',...
    'colormap winter,',...
    'end']);