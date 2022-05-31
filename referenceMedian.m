function [SQMR] = referenceMedian(SQMV,SQMD_B,SQMD_C,p, m1, m2, m3, m4, i, j, I, N)
%This function finds the reference median
dav = 0;
if (SQMD_C <= p) %no edge/weak edge
     SQMR = (SQMV(2) + SQMV(3))/2;
else %strong edge
    %determine what type of edge
    if(m1 == SQMV(1) && m2 == SQMV(2) && m3 == SQMV(3) && m4 == SQMV(4)) % horizontal edge
        for n=-N:N
            if(n ~= 0)
                dav = dav + I(i, j+n);
            end
        end
    elseif(m2 == SQMV(1) && m3 == SQMV(2) && m1 == SQMV(3) && m4 == SQMV(4)) % vertical edge
        for n=-N:N
            if(n ~= 0)
                dav = dav + I(i+n, j);
            end
        end
    else %diagonal edge%
        dav = dav + I(i-1, j+1) + I(i-1, j-1) + I(i+1, j-1) + I(i+1, j+1);
    end
    dav = dav/4;
    if(dav >= SQMV(3) && dav <= SQMV(4)) 
        SQMR = SQMV(3);
    else
        SQMR = SQMV(2);
    end   
end
end

