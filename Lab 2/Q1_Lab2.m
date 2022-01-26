syms t w
f1 = 30;
f2 = 50;
f3 = 70;
a1 = 3;
a2 = 4;
a3 = 5;
x = a1*cos(2*pi*f1*t) + a2*cos(2*pi*f2*t) + a3*cos(2*pi*f3*t) 
X = fourier(x,t,w)