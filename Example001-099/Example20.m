% 图形的隐藏属性
function Example20
h0=figure('toolbar','none',...
    'position',[200 150 450 300],...
    'name','Example20');
subplot(1,2,1)
[x,y,z]=sphere(10);
mesh(x,y,z)
axis off
title('Figurel:Opaque')
hidden on
subplot(1,2,2)
[x,y,z]=sphere(10);
mesh(x,y,z)
axis off
title('Figure2:Transparent')
hidden off