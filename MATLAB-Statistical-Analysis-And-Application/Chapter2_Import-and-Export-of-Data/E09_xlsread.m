%--------------------------------------------------------------------------
%                    调用xlsread函数读取文件中的数据
%--------------------------------------------------------------------------

% 读取文件examp02_14.xls第1个工作表中单元格A2:H4中的数据
num = xlsread('examp02_14.xls', 'A2:H4')    % 返回读取的数据矩阵num

% 读取文件examp02_14.xls第1个工作表中单元格A2:C3中的数据，将数据分别加1后返回
convertdata = xlsread('examp02_14.xls', '', 'A2:C3', '', @setplusone1)

% 读取文件examp02_14.xls第1个工作表中单元格A2:H2中的数据，将读取到的数据分别加1
% 返回数值矩阵num，文本矩阵txt，元胞数组raw，变换后数值矩阵X
[num, txt, raw, X] = xlsread('examp02_14.xls', '', 'A2:H2', '', @setplusone2)