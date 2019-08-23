load qpbox1   % 获取Hessian矩阵的值
lb = zeros(400,1); lb(400) = -inf;
ub = 0.9*ones(400,1); ub(400) = inf;
f = zeros(400,1); f([1 400]) = -2;
xstart = 0.5*ones(400,1);
% [x,fval,exitflag,output] = quadprog(H,f,[],[],[],[],lb,ub,xstart)

% options = optimset('MaxPCGIter',50);
% [x,fval,exitflag,output] = quadprog(H,f,[],[],[],[],lb,ub,xstart,options)

options = optimset('PrecondBandWidth',inf);
[x,fval,exitflag,output] = quadprog(H,f,[],[],[],[],lb,ub,xstart,options)


