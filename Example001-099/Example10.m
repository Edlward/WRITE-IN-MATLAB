% 阶梯图
function Example10
h0=figure('toolbar','none',...
    'position',[200 150 450 400],...
    'name','Example10');
a=0.01;
b=0.5;
t=0:10;
f=exp(-a*t).*sin(b*t);
stairs(t,f)
hold on
plot(t,f,':*')
hold off
glabel='函数e^{-(\alpha*t)}sin\beta*t的阶梯图';
gtext(glabel,'fontsize',16)
axis([0 10 -1.2 1.2])