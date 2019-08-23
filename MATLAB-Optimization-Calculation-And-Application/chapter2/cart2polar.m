function [r, theta] = cart2polar(x, y)
%CART2POLAR Transform Cartesian to polar coordinates.
%   [R,THETA] = CART2POLAR(X,Y) transforms corresponding elements of 
%   data stored in Cartesian coordinates X,Y to polar coordinates 
%   (angle THETA and radius R).  The arrays X and Y must be the same 
%   size (or either can be scalar). TH is returned in radians. 
 
% If the y argument is missing, set it to 0.
if nargin < 2
    y = 0;
end
% Calculate the radius magnitude
r = sqrt(x .^2 + y .^2);
% If the second output argument is present,calculate
% angle in degrees
if nargout == 2
    theta = atan2(y,x) * 180/pi;
end
