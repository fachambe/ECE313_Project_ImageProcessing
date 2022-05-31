function [Omega0, Omega1, Omega2, Omega3, Omega4] = getWindowPoints(I,i,j,N)
% This function obtains the points in a window given the window parameter N
% Parameters:
%   I: Image
%   i: y-coordinate of central pixel
%   j: x-coordinate of central pixel
%   N: window size parameter
% Omega0 is the points in the window
% Omega1, Omega2, Omega3, and Omega4 are the sets of points in a subwindow
% Omega1, 2, 3, and 4 correspond to 1st, 2nd, 3rd, and 4th the quadrant of Omega0
Omega0 = zeros(2*N+1, 2*N+1); % initialize
for s=-N:N
    for t=-N:N
        Omega0(s+N+1,t+N+1) = I(i+s,j+t);
    end
end
% Define Omega1, Omega2, Omega3, and Omega4
c = N+1;
e = 2*N+1;
Omega1 = Omega0(1:c, c:e);
Omega2 = Omega0(1:c, 1:c);
Omega3 = Omega0(c:e, 1:c);
Omega4 = Omega0(c:e, c:e);
end

