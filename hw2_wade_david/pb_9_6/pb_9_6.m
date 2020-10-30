sampleTimes = (0:8192-1)/8192;
midA = tone(1.0, 440);
decreasing_sound = midA .* exp(-3*sampleTimes);
pulse = midA .* cos(10*sampleTimes);
% This sound is a pulse 
sound(pulse)
plot(sampleTimes, pulse)
pause(2) 
% This sound decreases in volume 
sound(decreasing_sound)
plot(sampleTimes, decreasing_sound)

