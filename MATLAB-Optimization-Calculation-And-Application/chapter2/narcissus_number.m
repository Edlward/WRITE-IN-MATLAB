clear
s=[];				%置水仙花数数组为空
index=0;				%置水仙花数数量标志为0
for i=1:9
        for j=1:9
            for k=1:9
                if (i^3+j^3+k^3==100*i+10*j+k)
                    index=index+1;					%水仙花数数量标志加1
                    s(index)=100*i+10*j+k;			%存储找到的水仙花数
                end
            end
        end
end
s
index
