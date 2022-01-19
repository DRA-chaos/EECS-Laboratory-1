

% Sample the sinusoid s(t) = 3cos(2 pi f1 t)+ 6cos(2 pi f2 t), 
%where f1 = 70 Hz,  f2=50 Hz, we assume 2000Hx to be the sampling frequency


fs = 2000; %sampling frequency
t = 0 : 1/fs : 1 - 1/fs; %specifying the range
f1 = 70;
f2 = 50;
a1 = 3;
a2 = 6;
s = a1*cos(2*pi*f1*t + 0.2) + a2*cos(2*pi*f2*t + 0.3) ;
plot(s)
ylim([-10,10])
ylabel('s(t)')
xlabel('time')





%{
f1 = 20;
f2 = 30;
f = 2000;
T = 1/f;
t = 0 : 1/f : 1.5 - 1/f;
tmin = 0;
tmax = 5*T;             
dt1 = 1/19000;
dt2 = 1/4000;
t1 = tmin:dt1:tmax;
t2 = tmin:dt2:tmax;
x1 = 2*cos(2*pi*f1*t1);
x2 = 3*cos(2*pi*f2*t2);
subplot(211)
stem(t1,x1);
subplot(212)
stem(t2,x2);
%}
