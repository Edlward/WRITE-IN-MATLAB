% [Basic]矩阵的重构
% % 矩阵元素的扩展与删除
A=magic(4);
A(6,7)=17;
A(:,8)=ones(6,1);
A(:,1)=[];   %  删除矩阵A的第1列
A(2,:)=[];   %  删除矩阵A的第2行
 %%常用的矩阵重构函数及说明
% B=rot90(A)      矩阵B由矩阵A逆时针旋转90°所得
% L=tril(A,k)         L矩阵第k条对角线及以下的元素取矩阵A的元素，其余为0
% L=tril(A)           L矩阵主对角线及以下的元素取矩阵A的元素，其余为0
% B=rot90(A,k)    矩阵B由矩阵A逆时针旋转k×90°所得
% B=flipud(A)     矩阵B由矩阵A上下翻转所得
% U=triu(A,k)     U矩阵第k条对角线及以上的元素取矩阵A的元素，其余为0
% U=triu(A)       U矩阵主对角线及以上的元素取矩阵A的元素，其余为0
% B=reshape(A,m,n)    将矩阵A改写为矩阵B，矩阵B维数为(m×n)，m×n=矩阵A元素个数
% B=fliplr(A)     矩阵B由矩阵A左右翻转所得
a=reshape(1:12,6,2);
reshape(a,4,3);   %  注意前后两个a每一个单下标对应的元素是一致的
rot90(a,3);    %  将矩阵a逆时针旋转3×90°
fliplr(a);         %  将矩阵a左右翻转
flipud(a);        %  将矩阵a上下翻转
a=reshape(1:9,3,3);
b=diag(a);       %  求a的对角矩阵
c=triu(a,1);     % c矩阵第1条对角线及以上的元素取矩阵a的元素，其余为0
d=triu(a,-1);
e=tril(a,-1);