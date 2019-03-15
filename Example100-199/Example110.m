% 字符和字符串
% % 字符串的创建
a='matlab';
size(a);
A='中文字符的输入演示';
A(3:4);
S=['This string array '
    'has multiple rows.'];
size(S);
a=str2mat('This','string','contains','four lines');
size(a);
% % 字符串比较
str1='hello';str2='help';
C=strcmp(str1,str2);
C=strncmp(str1,str2,3);
str3='HELLO';
D=strncmp(str1,str3,5);% 对大小写敏感
D=strncmpi(str1,str3,5);% 对大小写不敏感
A='fate';B='cake';%判断两个字符串中有哪些字符相等
A==B;
% % 字符串查找与替换
% MATLAB也支持在字符串的查找与替换中使用正则表达式。
% 通过灵活使用正则表达式，可以对字符串进行各种形式的查找与替换。
% 用户可以查询帮助文档中的Regular Expressions部分
label='Sample 1,03/28/18';
newlabel=strrep(label,'28','30');%实现一般的查找与替换
strtemp='have a good time!';
position1=findstr('a',strtemp);
position2=findstr('oo',strtemp);
% strtok 函数用于返回分隔字符第1次出现之前的字符。
% 如果不自行指定分隔字符，默认的分隔字符则是泛空格符字符，
% 因此用户可以使用strtok函数将一个句子按照单词分开
t='I have walked out on a handful ofmovies in my life.';
remain=t;
while true
    [str,remain]=strtok(remain);
    if isempty(str),break;
    end
    disp(sprintf('%s',str))
end
% 函数strmatch用于查找一个字符数组中以指定子串开始的字符串，
% 该函数返回的是以指定子串开始的行编号
maxstrings=strvcat('max','minimax','maximum');
strmatch('max',maxstrings);
% % 类型转换
% num2str将数字转换为字符串
% % % 使用num2str函数将数字转换为字符串时，
% % % 可以指定字符串所表示的有效数字位数
% str2num将字符串转换为数字
% int2str将整数转换为字符串
% sprintf格式化输出数据到命令行窗口
% mat2str将矩阵转换为eval函数可以使用的字符串
% sscanf读取格式化字符串
% str2double将字符串转换为双精度类型的数据
% hex2num将十六进制整数字符串转换为双精度数据
% dec2bin将十进制整数转换为二进制整数字符串
% hex2dec将十六进制整数字符串转换为十进制数据
% base2dec将指定数制类型的数字字符串转换为十进制整数
% dec2hex将十进制数据转换为十六进制整数字符串
% dec2base将十进制整数转换为指定数制类型的数字字符串
% bin2dec将二进制整数字符串转换为十进制整数
a=['1 2';'3 4'];
b=str2num(a);
c=str2num('1+2i');
d=str2num('1 +2i');
% 转换生成变量c和d时得到了不同的结果，主要原因是在变量d中
% 数字 “1”和字符“+2i”之间存在空格
% 为了避免出现上述问题，可以使用str2double函数，
% 但是该函数仅能转换标量，不能转换矩阵或者数组
% 字符串创建函数
% % 'str'由单引号（英文状态）创建字符串
% % blanks创建空格字符串
% % sprintf将格式化数据写入字符串
% % strcat字符串组合
% % strvcat竖直方向字符串组合
% 字符串修改函数
% % deblank删除尾部空格
% % lower将所有字符小写
% % sort将所有元素升序或降序排列
% % strjust字符串对齐
% % strrep字符串替换
% % strtrim删除开始和尾部的泛空格符
% % upper将所有字符大写
% 字符串的读取和操作
% % eval将一个字符串作为MATLAB命令执行
% % sscanf格式读入字符串
% 字符串查找替换函数
% % findstr查找子串
% % strcmp字符串比较
% % strcmpi字符串比较，忽略大小写
% % strmatch查找符合要求的行
% % strncmp比较字符串的前N个字符
% % strncmpi比较字符串的前N个字符，忽略大小写
% % strtok查找某个字符最先出现的位置