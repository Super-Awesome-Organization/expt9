above = zeros(5003,1);
below = above;
abovecnt = 0;
belowcnt = 0;
for k = 1:1000
    for p = 1:5003
        if traces_all(p,k)>avg(p,1)
            above (p,1) = above (p,1) + traces_all(p,k);
            abovecnt = abovecnt +1;
        else
            below (p,1) = above (p,1) + traces_all(p,k);
            belowcnt = belowcnt +1;
        end    
            
    end
end

out = (above/abovecnt)- (below/belowcnt);
