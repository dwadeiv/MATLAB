function fc = fchord(chord)
    if nargin < 1
        chord = [370, 440, 587, 740]; 
    end 
    [n,~] = size(chord); 
    if n > 1
        error('Argument must be a single row vector.')
    end  
    ssas = zeros(1,4096); 
    ssas(chord + 1) = 1/length(chord); 
    F = [ssas(1), ssas(2:4096)/2, 0, ssas(4096:-1:2/2)]*8192; 
    f = real(ifft(F)); 
    t = (0:(8192-1/8192)); 
    plot(t(1:128), f(1:128));
    title('Time Domain')
    grid on
    sound(f); 
end 

