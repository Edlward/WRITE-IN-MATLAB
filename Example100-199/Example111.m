% [Basic]Structure数组
employee(1).name='henry';
employee(1).sex='male';
employee(1).age=25;
employee(1).number=12345;
employee(2).name='lee';
employee(2).sex='female';
employee(2).age=23;
employee(2).number=98765;
employee;
student=struct('name',{'richard','jackson'},...
    'age',{23,24},'grade',{2,3});
% % Structure数组的寻访
% % Structure数组域的基本操作
% struct创建结构数组或将其他数据类型转换为结构数组
% rmfield删除结构的指定域
% fieldnames获取结构的域名
% isfield判断给定的字符串是否为结构的域名
% getfield获取结构的域内容
% isstruct判断给定的数据对象是否为结构类型
% setfield设置结构的域内容
% orderfields对结构域排序
USPres.name='Franklin D.Roosevelt';
USPres.vp(1)={'John Garner'};
USPres.vp(2)={'Henry Wallace'};
USPres.vp(3)={'Harry S Truman'};
USPres.term=[1933,1945];
USPres.party='Democratic';
presFields=fieldnames(USPres);%  使用fieldnames函数获取现有域名
orderfields(USPres);%使用orderfields函数对域名按照字母顺序进行排序
mystr1=getfield(USPres,'name');%  获取结构的域内容
mystr2=setfield(USPres,'name','Ted');%  设置结构的域内容
% % Structure数组的操作
USPres(3,2).name='Richard P.Jackson';%  结构数组的扩展
USPres(2,:)=[];%  通过对结构数组赋值为空矩阵来实现删除
clear
for k=1:10
    department(k).number=['No.',int2str(k)];
end
% 在数组中任何一个结构上进行的域增添操作都将影响到整个结构数组
department(1).teacher=40;
department(1).student=300;
department(1).PC_computer=40;
% 增添子域的操作只影响被操作的那个具体结构，而不影响整个结构数组
department(2).teacher.male=35;
department(2).teacher.female=13;
department(2).teacher;
department(1).teacher;