% Cell数组

% A={[1 4 3;0 5 8;7 3 9],'abcdefg';3+7i,-pi:pi/4:pi};
A(1,1)={[1 4 3;0 5 8;7 3 9]};
A(1,2)={'abcdefg'};
A(2,1)={3+7i};
A(2,2)={-pi:pi/4:pi};

header={'Name','Age','Pulse/Temp/BP'};
% records(1,:)={'Kelly',49,{58,98.3,[103,72]}};
vitalsigns={60,98.4,[105,75]};
records(1,:)={'Kelly',49,vitalsigns};

b=cell(3,3);

str1=A{1,2};
class(str1);
str2=A(1,2);
class(str2);