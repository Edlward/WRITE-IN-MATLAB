% 区域图形???
function Example08
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','Example08');
x=91:95;
profits1=[88 75 84 93 77];
profits2=[51 64 54 56 68];
profits3=[42 54 34 25 24];
profits4=[26 38 18 15 4];
area(x,profits1,'facecolor',[0.5 0.9 0.6],...
    'edgecolor','b',...
    'linewidth',3)
hold on
area(x,profits2,'facecolor',[0.9 0.85 0.7],...
    'edgecolor','y',...
    'linewidth',3)
hold on
area(x,profits3,'facecolor',[0.3 0.6 0.7],...
    'edgecolor','r',...
    'linewidth',3)
hold on
area(x,profits4,'facecolor',[0.6 0.5 0.9],...
    'edgecolor','m',...
    'linrwidth',3)
hold off
set(gca,'xtick',[91:95])
set(gca,'layer','top')
gtext('\leftarrow第一季度销量')
gtext('\leftarrow第二季度销量')
gtext('\leftarrow第三季度销量')
gtext('\leftarrow第四季度销量')
xlabel('','fontsize',16);
ylabel('','fontsize',16);