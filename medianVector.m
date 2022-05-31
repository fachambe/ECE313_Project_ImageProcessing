function [SQMV,SQMD_B,SQMD_C] = medianVector(A,B,C,D)
% This function returns the Square Median Vector (SQMV)
% SQMD_B and SQMD_C are vectors containing information about the
% edge/texture of the image in the window
% Parameters:
%   A, B, C, D are matrices representing OmegaK, for K = 1, 2, 3, 4
m1 = median(A(:));
m2 = median(B(:));
m3 = median(C(:));
m4 = median(D(:));
M = [m1, m2, m3, m4];
SQMV = sort(M);
SQMD_B = SQMV(4) - SQMV(1);
SQMD_C = SQMV(3) - SQMV(2);

