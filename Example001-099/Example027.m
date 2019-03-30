% [绘图]设置照明方式
subplot(2,2,1)
sphere
shading flat
camlight left
camlight right
lighting flat
colorbar
axis off
title('Figure1')
subplot(2,2,2)
sphere
shading flat
camlight left
camlight right
lighting gouraud
colorbar
axis off
title('Figure2')
subplot(2,2,3)
sphere
shading interp
camlight right
camlight left
lighting phong
colorbar
axis off
title('Figure3')
subplot(2,2,4)
sphere
shading flat
camlight left
camlight right
lighting none
colorbar
axis off 
title('Figure4')