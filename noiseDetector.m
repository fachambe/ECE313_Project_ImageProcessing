function [S1,S2] = noiseDetector(x,SQMR,Tk1,Tk2)
% This function returns S1 and S2
%   Parameters:
%   x: represents the current pixel (x(i,j))
%   SQMR: Reference median
%   Tk1, Tk2: Threshold for noise determined experimentally
% S1, S2 = 1 implies impulse noise
% S1=1, S2=0 implies Gaussian noise
% S1=0, S2=0 implies noise free
S1 = 0;
S2 = 0;
if abs(x-SQMR) >= Tk1
    % Impulse noise
    S1 = 1;
    S2 = 1;
elseif abs(x-SQMR) >= Tk2
    % Gaussian noise
    S1 = 1;
    S2 = 0; 
end
end

