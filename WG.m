function [value] = WG(i,j,s,t)
sigma_s = 1; % spatial variance chosen in research paper
num = (i-s)^2 + (j-t)^2;
den = 2*(sigma_s)^2;
value = exp(-num/den);
end

