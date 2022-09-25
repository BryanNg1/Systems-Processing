clc 
clear

%uncomment for question 3 representation
% %questions 1-3
% %to print graph of
% % Read in the signal from the audio file
% [signal, Fs] = audioread('SecretMessage2020.wav');
% L = length(signal)
% T = 1/Fs;
% t = [0:L-1]*T;
% 
% plot(t,signal)
% title('Plot of Input Signal 400181785 400187878')
% xlabel('time s')
% ylabel('y(t)')
% 
% % Take the DFT
% Y = fft(signal)/L;
% f = Fs/2*linspace(0,1,L/2+1);
% %Plot the single-sided magnitude spectrum.
% plot(f,2*abs(Y(1:L/2+1)));
% title('Single-Sided Magnitude Spectrum 400181785, 400187878')
% xlabel('Frequency (Hz)')
% ylabel('|Y(f)|')
% axis([0 Fs/2 0 .5]);
% grid('minor');
% 
% %Bryan Ng 400181785
% %Matthew Badal Badalian 400187878


%question 4
% Read in the signal from the audio file
[signal, Fs] = audioread('SecretMessage2020.wav');
L = length(signal)
T = 1/Fs;
t = [0:L-1]*T;

%there are 64 seconds in the audio file thus loop conditions
for i = 0:63
    %define max and min values per iteration (sample every second)
    %want to sample at each second until 64th second
    max = (i+1)*Fs;
    min = i*Fs+1;
    %define the number of samples by length of signal at each second
    numsamples = length(signal(min:max));
    % Take the DFT
    Y = fft(signal(min:max))/numsamples;
    f = Fs/2*linspace(0,1,numsamples/2+1);
    %Plot the single-sided magnitude spectrum.
    %use subplot to plot data and analyze
    subplot(8,8,i+1)
    plot(f,2*abs(Y(1:numsamples/2+1)));
    title('400181785 400187878')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    axis([0 Fs/2 0 .5]);
    grid('minor');
end

%Bryan Ng 400181785
%Matthew Badal 400187878
