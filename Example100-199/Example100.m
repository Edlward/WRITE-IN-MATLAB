% 使用format函数对显示格式进行设置
format%短格式:默认格式，同short
v_format=pi
format short%短格式:只显示4位有效数字
v_format_short=pi
format long%长格式:15位有效数字
v_format_long=pi
format short e%短格式e方式:5位科学计数格式
v_format_short_e=pi
format long e%长格式e方式:15位科学计数格式
v_format_long_e=pi
format short g%短格式g方式:从short 和short e中自动选择更紧凑的表示方法
v_format_short_g=pi
format long g%长格式g方式:从long和long e中自动选择更紧凑的表示方法
v_format_long_g=pi
format hex%十六进制格式
v_format_hex=pi
format +%+格式:用于显示大矩阵，正数、负数、零分别用+、-、空格表示
v_format_plus=[1,2,3;4,5,6;7,8,9]
format bank%银行格式:用以表示货币，两位有效数字
v_format_bank=pi
format rat%有理数格式:用近似的有理数表示
v_format_rat=pi
format compact%压缩格式:在显示变量之间没有空行
v_format_compact=pi
format loose%宽松格式:在显示变量之间有空行
v_format_loose=pi