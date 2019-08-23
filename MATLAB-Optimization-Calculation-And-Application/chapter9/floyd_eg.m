a=[0 1 inf inf inf 2;
1 0 4 inf inf 4; 
inf 4 0 2 inf 1;
inf inf 2 0 3 3;
inf inf inf 3 0 5;
2 4 1 3 5 0];
[D,R]=floydSPR(a)
