function v = cal_var(u)
% CAL_VAR Find the variance of a data set 
%   V=CAL_VAR(U) Calculate the variance V of an array U using 
%   subfunctions.
n = length(u);
avg = mean(u, n);
s = 0;
for i = 1:n
    s = s + (u(i)-avg)^2;    
end
v = s/n;
 
function a = mean(v, n)
% Subfunction to calculate average.
a = sum(v)/n;
