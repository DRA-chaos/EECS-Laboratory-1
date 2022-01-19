%{

S(1) = load('gong');
S(2) = load('handel');
[y,Fs] = audioread('gong.wav');
%sound(S(1).y,S(1).Fs)
%sound(S(2).y,S(2).Fs)
%}
load gong.mat
audiowrite('audio2.wav',y,Fs);
Y=fft(y,Fs);
Y_mag = abs(Y);
plot(Y_mag)