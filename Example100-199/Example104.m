% MATLAB的矩阵运算
%%**************************************************************%%
% 数组运算
% A.'                非共轭转置,相当于(conj(A'))
% k+A与k-A     k加（减）A的每个元素
% k.*A或A.*k   k乘A的每个元素
% A.*B               两数组对应元素相乘
% k./A和A.\k      k分别被A的元素除
% A.^k              A的每个元素进行k次方运算
% 左除A./B        A的元素被B的对应元素除
% 右除B.\A         与上式结果相同
% k.^A              以k为底，分别以A的元素为指数求幂值
%%**************************************************************%%
% 矩阵运算
% A'                   共轭转置
% A+B与A-B     对应元素之间加减
% k*A或A*k     k乘A的每个元素
% k+A与k-A     k加（减）A的每个元素
% A*B                线性代数的矩阵乘法规则
% A^k               k个矩阵A相乘
% 左除A\B           AX=B的解
% 右除B/A           XA=B的解
% k^A               矩阵的幂。K和A不能同时为矩阵。按照矩阵幂的运算法则进行计算
%%**************************************************************%%