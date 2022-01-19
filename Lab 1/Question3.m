

fs = 2000;
fc = 30; 
fm = 70;  % fm > fc

l = 1/fs;  
t = 0: l : 1-l; 

m = cos(2*pi*fm*t);
c = cos(2*pi*fc*t);
s = c.*m;

M = fft(m);
M_magnitude = abs(M);

C = fft(c);
C_magnitude = abs(C);

S = fft(s);
S_magnitude = abs(S);

subplot(3,1,1);
plot(M_magnitude);
ylabel('M(f) Magnitude');
xlabel('frequency');
title('Magnitude Spectrum of message signal m(t)');

subplot(3,1,2);
plot(C_magnitude);
ylabel('C(f) Magnitude');
xlabel('frequency');
title('Magnitude Spectrum of carrier signal c(t)');

subplot(3,1,3);
plot(S_magnitude);
ylabel('S(f) Magnitude');
xlabel('frequency');
title('Magnitude Spectrum of DSBSC signal s(t)');
