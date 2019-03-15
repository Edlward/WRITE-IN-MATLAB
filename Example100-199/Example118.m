% matlab数据写入记事本
fid = fopen('tp.txt','wt');
% fprintf(fid,'This is the datzbase of class 1.\n');
name='Sally';Types=1;x=3.1;y=45;answer='Yes';
fprintf(fid,'%s Type %u %f %u %s \n',name,Types,x,y,answer);
% %u为十进制数
name='Tom';Types=1;x=2.5;y=20;answer='No';
fprintf(fid,'%s Type %u %f %u %s \n',name,Types,x,y,answer);
name='Joy';Types=3;x=.51;y=1;answer='No';
fprintf(fid,'%s Type %u %f %u %s \n',name,Types,x,y,answer);
name='Lily';Types=2;x=2.1;y=80;answer='Uncertain';
fprintf(fid,'%s Type %u %f %u %s \n',name,Types,x,y,answer);
fclose(fid);