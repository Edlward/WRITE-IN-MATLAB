% ���ͼ
function Example17
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','Example17');
t=(1:2:15)*pi/8;
x=sin(t);
y=cos(t);
fill(x,y,'r')
axis square off
text(0,0,'STOP',...
    'color',[1 1 1],...
    'fontsize',50,...
    'horizontalalignment','center')