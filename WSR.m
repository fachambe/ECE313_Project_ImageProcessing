function [value] = WSR(x,Ic)
sigma_r = 40;  % relative pixel variance chosen in research paper
num = (Ic-x)^2;
den = 2*(sigma_r)^2;
value = exp(-num/den);
end

