clear
s=[];				%��ˮ�ɻ�������Ϊ��
index=0;				%��ˮ�ɻ���������־Ϊ0
for i=1:9
        for j=1:9
            for k=1:9
                if (i^3+j^3+k^3==100*i+10*j+k)
                    index=index+1;					%ˮ�ɻ���������־��1
                    s(index)=100*i+10*j+k;			%�洢�ҵ���ˮ�ɻ���
                end
            end
        end
end
s
index
