% 多项式的表达式及其操作
% % 多项式的表达式
p=[1 0 -2 -5];%p(x)=x^3-2*x-5
% % % 多项式行向量的创建方法
% % % P=poly(A)生成多项式系数向量。
% % % 若A是方阵，多项式P就是该方阵的特征多项式。
% % % 若A是一个向量， A的元素就被认为是多项式P的根
A=[11 12 13;14 15 16;17 18 19];
PA=poly(A);%  A的特征多项式
PPA=poly2str(PA,'s');% 以较为习惯的方式显示多项式
R=[-0.5,-0.3+0.4*i,-0.3-0.4*i];%  根向量
P=poly(R);%  R 的特征多项式
PR=real(P);
PPR=poly2str(PR,'x');
% 需要指出的是：要形成实系数多项式，则根向两种的复数根必须共轭成对；
% 含复数的根向量所生成的多项式系数向量（如P）的系数有可能带在截断
% 误差数量级的虚部，此时可以采用取实部的函数real来将此虚部滤掉
% % 多项式运算函数
% 求(s^2+2)*(s+4)*(s+1)/(s^3+s+1)的"商"及"余"多项式
p1=conv([1,0,2],conv([1,4],[1,1]));%  计算分子多项式
p2=[1 0 1 1];
[q,r]=deconv(p1,p2);
cq='商多项式为';
cr='余多项式为';
disp([cq,poly2str(q,'s')]),disp([cr,poly2str(r,'s')]);%显示运算结果
% % % 两种多项式求值指令的差别示例
S=pascal(4);
P=poly(S);
PP=poly2str(P,'s');
PA=polyval(P,S);%  独立变量取数组 S 元素时的多项式值
PM=polyvalm(P,S);%  独立变量取矩阵 S 时的多项式值
% 从理论上讲，PM应该为零。这就是著名的“Caylay-Hamilton”定理：
% 任何一个矩阵满足它自己的特征多项式方程。本例中的PM的元素都很小，
% 这是由截断误差造成的。
% % 部分分式展开示例:
a=[1,3,4,2,7,2];% 分母多项式系数向量
b=[3,2,5,4,6];%  分子多项式系数向量
[r,s,k]=residue(b,a);
% 本例中的k是空阵，这说明分母的阶数高于分子。
% 另外从计算数学上来讲，如果某些根很靠近，
% 极点和留数的计算受截断误差的影响会比较大，
% 此时用这种表达方式的数值稳定性不如用状态方程或零点、极点展开可靠