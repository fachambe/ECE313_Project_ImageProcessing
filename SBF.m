function [u] = SBF(I,i,j,N,Ic)
% This function returns the new value held by the pixel x (x is filtered to
% become u)
% Parameters:
%   I: Image
%   i: y-coordinate of central pixel
%   j: x-coordinate of central pixel
%   N: window size parameter
%   Ic: constant used for filtering (not to be confused with the Image
%   variable)
num = 0;
den = 0;
for s=-N:N
    for t=-N:N
        num = num + WG(i,j,i+s,j+t)*WSR(double(I(i+s,j+t)),double(Ic))*double(I(i+s,j+t));
        den = den + WG(i,j,i+s,j+t)*WSR(double(I(i+s,j+t)),double(Ic));
    end
end
u = num/den;
end

