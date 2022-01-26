[b,a]=butter(2,30,'s'); 
wband=logspace(-5,5); 
figure(1);
freqs(b,a,wband); 
title('Butterworth filter')