function Hd = FilterDesignPart_a
%FILTERDESIGNPART_A Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.11 and DSP System Toolbox 9.13.
% Generated on: 12-Feb-2022 14:58:44

% FIR least-squares Lowpass filter designed using the FIRLS function.

% All frequency values are normalized to 1.
% c is the tap vector given to us of length M=2 ; 
%Since M=2 , N= M+1 = 1;
N     = 1;    % Order
Fpass = 0.2;  % Passband Frequency
Fstop = 0.5;  % Stopband Frequency
Wpass = 1;    % Passband Weight
Wstop = 1;    % Stopband Weight

% Calculate the coefficients using the FIRLS function.
%b  = firls(N, [0 Fpass Fstop 1], [1 1 0 0], [Wpass Wstop]);
c = [1 0.5]; % c is the tap vector

Hd = dfilt.dffir(c);

% [EOF]


