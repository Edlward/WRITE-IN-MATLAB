% 计算三重积分[(x+y+z)^2]dxdydz while z>=x^2+y^2&&x^2+y^2+z^2<=2
f=@(x,y,z)(x+y+z).^2.*(z>=x.^2+y.^2&x.^2+y.^2+z.^2<=2);
I=triplequad(f,-sqrt(2),sqrt(2),-sqrt(2),sqrt(2),0,sqrt(2))