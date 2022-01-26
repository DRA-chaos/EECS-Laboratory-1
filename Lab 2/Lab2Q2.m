[b,a]=butter(2,32,'s'); 
wband=logspace(-6,6); 
figure(1);
freqs(b,a,wband); 
title('Butterworth filter')

H = poly2sym(b,w)/poly2sym(a,w);

Y=X.*H
y=ifourier(Y,w,t)


