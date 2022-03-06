fc = 3000;

fs = 10000;

[b,a] = butter(6,fc/(fs/2));
freqz(b,a)
dataIn = randn(1000,1);
dataOut = filter(b,a,dataIn);