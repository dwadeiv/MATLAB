sampleTimes = (0:8192-1)/8192;
midA = tone(1.0, 440);
plot(midA)
pause(2)
plot(sampleTimes(1:ceil(8192/440)), midA(1:ceil(8192/440)))
pause(2)
plot(sampleTimes(1:ceil(8192/440)), midA(1:ceil(8192/440)),'-o')
pause(2)
plot(sampleTimes(1:ceil(10*8192/440)), midA(1:ceil(10*8192/440)))