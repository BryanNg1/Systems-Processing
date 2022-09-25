[signal, Fs] = audioread('speech.wav');
L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds
t = [0:L-1]*T; % Time vector in seconds

Te = 150; %delay in ms
alpha = 1; %amplitude

delaymat = zeros(size(signal)); %used to store offsetted original signal
offset = fix(Fs*Te*(0.00150)) %offset for sample convert to integer
delaymat(offset:end) = signal(1:end-offset+1); %fs(t-te) 
signalplusecho = signal + alpha*delaymat; %creates the echoed signal
signalplusecho = signalplusecho/max(abs(signalplusecho)); 
audiowrite('speechwithecho.wav', signalplusecho, Fs); %create audio file

%Bryan Ng 400181785
%Matthew Badal Badalian 400187878