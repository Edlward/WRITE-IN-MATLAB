% [Basic]MATLAB的Cell数组操作
% 元胞数组的合并
C1={'Jan' 'Feb';'10' '17';uint16(2004) uint16(2001)};
C2={'Mar' 'Apr' 'May';'31' '2' '10';...
    uint16(2006) uint16(2005) uint16(1994)};
C3={'Jun';'23';uint16(2002)};
C4={C1 C2 C3};%  生成嵌套元胞数组
C5=[C1 C2 C3];%  生成元胞数组

C5(:,3)=[];%  删除元胞数组C5的第3列

% cell创建空的元胞数组
% num2cell将数值数组转换为元胞数组
% cellfun对元胞数组的每个元胞执行指定的函数
% mat2cell将数值矩阵转换为元胞数组
% celldisp显示所有元胞的内容
% cell2struct将元胞数组转换为结构
% cellplot利用图形方式显示元胞数组
% struct2cell将结构转换为元胞数组
% cell2mat将元胞数组转换为普通的矩阵
% iscell判断输入是否为元胞数组

clear
a={20,'matlab',3-7i;ones(2,3),1:3,0};
b=cellfun('isreal',a);% 判断a中各元素是否是实数
c=cellfun('length',a);% 查看a中各元素的长度

A={1:10,[2;4;6],[]};
averages=cellfun(@mean,A);%  将mean函数应用于每一个元胞元素
[nrows,ncols]=cellfun(@size,A);
% 能在cellfun中使用的函数
% isempty若元胞元素为空，则返回逻辑真
% length元胞元素的长度
% islogical若元胞元素为逻辑类型，则返回逻辑真
% ndims元胞元素的维数
% isreal若元胞元素为实数，则返回逻辑真
% prodofsize元胞元素包含的元素个数
% size返回元胞元素的尺寸
% isclass元胞元素是否属于某一类型

celldisp(a);%  显示元胞数组的所有元素
cellplot(a);%  以图片表示元胞数组的基本结构