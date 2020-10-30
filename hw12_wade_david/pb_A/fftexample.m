function [F,S] = fftexample
t = (0:7)/8; 
f = -0.1 + 0.2.*sin(2*pi*t) - 0.4.*cos(2*pi*t) + 0.3.*sin(2*pi*3*t);
F = fft(f); 
S = abs([F(1) 2*F(2:4)])/8;
end 
  