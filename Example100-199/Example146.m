% [微积分]求导,极值,最值
syms x;
diff(3*sin(x)+4*x^2); % 求导
diff(log(x+cos(x))); % 求导
diff([3*sin(x)+4*x^2, log(x+cos(x))]); % 求一组函数的导数
diff(log(x+cos(x)), 7); % 求7阶导数

syms t;
dx_dt = diff(t^2-log(2+sin(t)));
dy_dt = diff(t^3-3*sin(log(t)));
dy_dx = dy_dt/dx_dt;
disp(dy_dx);

[x1, f1] = fminbnd('x^2-3*x+1', -10, 10);
% 区间内最小值点与最小值
[x2, f2] = fminsearch('sin(x)+1', 3);
% 在某一点附近的局部最小值点与最小值