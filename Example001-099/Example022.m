% [绘图]别问我这是啥
subplot(1,2,1)
x=rand(1,20);
y=rand(1,20);
z=peaks(x,y*pi);
t=delaunay(x,y);
trimesh(t,x,y,z);
hidden off
title('Figure1:Triangular Surface Plot');
subplot(1,2,2)
x=rand(1,20);
y=rand(1,20);
t=delaunay(x,y);
trisurf(t,x,y,z)
title('Figure2:Triangular Surface Plot');