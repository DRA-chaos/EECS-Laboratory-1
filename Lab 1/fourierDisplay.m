%{
f1 = 5000;
f2 = 4000;
f = 2000;
T = 1/f;
tmin = 0;
tmax = 5*T;             
dt1 = 1/19000;
dt2 = 1/4000;
t1 = tmin:dt1:tmax;
t2 = tmin:dt2:tmax;
x1 = 2*cos(2*pi*f1*t1);
x2 = 3*cos(2*pi*f2*t2);
X = 2*cos(2*pi*f1*T) + 3*cos(2*pi*f2*T);
plot(X)

fs = 1000;
t = 0 : 1/fs : 1.5 - 1/fs;
f1 = 20; 
f2 = 30;
x = 2*cos(2*pi*f1*t) + 3*cos(2*pi*f2*t);
%plot(x)
X = fft(x);
X_mag = abs(X);
%plot(X_mag)
X_phase = angle(X);
%the phase values would be a set of complex numbers
plot(X_phase)
X_phase(0.1)
%}

fs = 2000; %sampling frequency
t = 0 : 1/fs : 1 - 1/fs; 
f1 = 70;
f2 = 50;
a1 = 3;
a2 = 6;
s = a1*cos(2*pi*f1*t + 0.2) + a2*cos(2*pi*f2*t + 0.3) ;

S = fft(s);

length(s); %2000 bins in frequency domain


subplot(2,1,1);
S_magnitude = abs(S);
plot(S_magnitude);
ylabel('magnitude')
xlabel('frequency')

subplot(2,1,2)
S_phase = angle(S);
plot(S_phase);
ylabel('phase')
xlabel('frequency')



















