% surface(x, y, z)得到函数在x-y平面的投影图，以颜色区分z的大小
[x, y] = meshgrid(-2: 0.1: 2);
z = x.^2 + y.^3;
surface(x, y, z);