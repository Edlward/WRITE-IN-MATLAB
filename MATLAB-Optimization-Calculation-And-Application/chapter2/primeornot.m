function primeornot(a)
%PRIMEORNOT True for prime numbers.
%   PRIMEORNOT(X) judges whether a positive integer is a prime number
%   or not, and then prints the results
%
%   Class support for input X:
%      float: double, single
%
%   See also FACTOR, PRIMES.
 
if ~isreal(a) || round(a)~=a || a<0 || length(a)~=1
    disp('please input an positive integer!')
    return
end
if a==1
    fprintf('%d is not a prime number\n',a);
    return
end
 
flag=0;    
for i=1:fix(sqrt(a))
    if mod(a,i) ==0
        flag=flag+1;
        if flag>1
            fprintf('%d is not a prime number\n',a);
            return
        end
    end
end
fprintf('%d is a prime number\n',a);
