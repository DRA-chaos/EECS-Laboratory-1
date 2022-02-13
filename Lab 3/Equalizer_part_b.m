

L=5;
M = 4;
chtaps = [1 0.5*exp(1i*pi/6) 0.1*exp(-1i*pi/8)]; %channel delay taps
EbN0 = 20; %Signal to noise ratio
%Here, we equalize a BPSK signal using a linear equalizer that removes ISI
% using mmse

data = randi([0 1],1000,1); %Generate random binary data and apply BPSK modulation.
modData = pskmod(data,M);
%AWGN noise has also been added
rxSig = conv(modData,[0.02+0.5i 0.05]);
rxSig = awgn(rxSig,30);

% We create a linear equalizer System object configured to calculate the MMSE weights. 
% We set the initial tap weights to the calculated MMSE weights and then equalize the impaired symbols.


eq = comm.LinearEqualizer('Algorithm','CMA','AdaptWeights',false,'InitialWeightsSource','Property')
wgts = mmseweights(eq,chtaps,EbN0);


eq.InitialWeights = wgts;

[y,err,weights] = eq(rxSig);
constell = comm.ConstellationDiagram('NumInputPorts',2);
constell(rxSig,y)

% Plot constellation of impaired and equalized symbols.
grid on; 
plot(abs(err))
title('Error Estimate')
xlabel('Bits')
ylabel('Amplitude (V)')

% Plot the equalizer error signal and compute the error vector magnitude of the equalized symbols.
errevm = comm.EVM;
evm = errevm(rxSig,y)

% Plot equalizer tap weights.

subplot(3,1,1); stem(real(weights)); ylabel('real(weights)'); xlabel('Tap'); grid on; axis([1 8 -0.5 1])
line([eq.NumTaps+0.5 eq.NumTaps+0.5], [-0.5 1], 'Color', 'r', 'LineWidth', 1)
title('Equalizer Tap Weights')
subplot(3,1,2); stem(imag(weights)); ylabel('imag(weights)'); xlabel('Tap'); grid on; axis([1 8 -0.5 1])
line([eq.NumTaps+0.5 eq.NumTaps+0.5], [-0.5 1], 'Color', 'r', 'LineWidth', 1)
subplot(3,1,3); stem(abs(weights)); ylabel('abs(weights)'); xlabel('Tap'); grid on; axis([1 8 -0.5 1])
line([eq.NumTaps+0.5 eq.NumTaps+0.5], [-0.5 1], 'Color', 'r', 'LineWidth', 1)
