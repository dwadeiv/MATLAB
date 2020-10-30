function rv = bandstop(F, band)
rate =size(F,1);
if any(size(band)  ~= [1 2]) ||any(band < 0) ||any(fix(band)  ~= band)
    error('band must be a 1x2 vector')
end
if band(1) > band(2) || band(2) >= rate/2
    error('band must be an ordered pair of frequencies')
end
rv = [F(1:band(1),:); zeros(band(2)-band(1)+1,size(F,2)); F(band(2)+2:rate-band(2),:); zeros(band(2)-band(1)+1,size(F,2)); F(rate-band(1)+2:rate,:);
end


