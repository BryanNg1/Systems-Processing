clc
clear
% Do a plot of a sampled sinusoid with frequency f = 100 Hz
%
f1 = 100;
u = 2000;
%
% Sampling frequency and interval
fs = 16000;
Ts = 1/fs;
%
% Set time duration of plot,8 sec
tfinalplot = 8;
%
% Make the time vector for the plot
nplot=0:Ts:tfinalplot;
%
% Sample the sinusoid.
xnT = cos(pi*u*(nplot.^2)+2*pi*f1*nplot);
%
% Make the plot
plot(nplot, xnT);
title("Fs = 500 Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
xlabel("t");
ylabel("x(t)");

audiowrite("freqchirp.wav", xnT, fs);
