[signal, Fs] = audioread('speech.wav');
L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds
t = [0:L-1]*T; % Time vector in seconds

Te = 150; %delay in ms
alpha = 1; %amplitude
offset = fix(Fs*Te*0.00150); %offset for sample convert to integer
Ne = 5; %number of echos
reverbmat = zeros(size(signal)); %stores offsetted values, reverberation vector
valholder = 0; %holds values of echos (like in equation given)

%starts from 1 cycles to number of echoes times offset
for count=1:offset:(Ne*offset)+1 
    %holds reverb impulse values derived from original signal
    %used equation given to create echoes of original signal
    valholder = valholder + (alpha^count)*(signal(count)+Te*count); 
    %adds reverb impulse values to matrix of zeros
    reverbmat(count) = valholder;
end

%convolutes original signal and new reverb matrix
reverbsignal = conv(signal, reverbmat);
reverbsignal = reverbsignal/max(abs(reverbsignal));
audiowrite('reverbsignal.wav', reverbsignal, Fs); %creates new audio file

%Bryan Ng 400181785
%Matthew Badal Badalian 400187878