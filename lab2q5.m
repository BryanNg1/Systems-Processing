[signal, Fs] = audioread('speech.wav');
L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds
t = [0:L-1]*T; % Time vector in seconds

Te = 150; %delay in ms
alpha = 1; %amplitude
offset = fix(Fs*Te*(0.00150)) %offset for sample convert to integer
delaymatIR = zeros(size(signal)); %used to store offsetted original signal
delaymatIR(1) = 1*alpha; %set index one to 1
delaymatIR(offset) = 1*alpha; %convolution will give echo delay
%sets offsetted index to 1

convolute = conv(signal,delaymatIR); %creates convoluted matrix
%convolutes signal and delay matrix
convolutesig = convolute/max(abs(convolute)); 
audiowrite('signalconvolute.wav', convolutesig, Fs); %create audio file

%Bryan Ng 400181785
%Matthew Badal Badalian 400187878