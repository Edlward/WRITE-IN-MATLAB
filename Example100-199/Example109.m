% 逻辑数据类型
rand('state',0)
a=rand(4,3);
a(a<0.6)=0;
b=logical(a);%  计算逻辑型矩阵b
c=true(size(a));%  生成全为true的矩阵
d=false([size(a),2]);%  生成全为false的矩阵
whos
a=[1 2 3;4 5 6];
b=[1 0 0;0 -2 1];
A=a&b;
B=a|b;
C=~b;
a=[1 1 0;1 0 0;1 0 1];
A=all(a);%  每列元素均为非零时返回真
B=any(a);%  每列元素存在非零时返回真
A=isstrprop('abc123def','alpha');
% % 本例中，'alpha'参数的作用就是判断输入字符串abc123def中
% % 哪些元素是字母。是字母的字符相对应地返回逻辑值true，也就是1
% % 而数字所对应返回的是false，也就是0
% 关系运算
a=[0 -1 2];b=[-3 1 2];
a<b
a~=b