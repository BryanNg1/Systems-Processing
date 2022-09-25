clc
clear
% Sampling frequency and interval
fs = 8000;
Ts = 1/fs;
%
% Set time duration of plot, i.e., 10 msec.
tfinalplot = 10e-3;
%
% Make the time vector for the plot
nplot=0:Ts:tfinalplot;
%
% Make the time vector for replayed sound spurt
% Play the spurt for 2 seconds
tfinal = 2;
nsound=0:Ts:tfinal;
%
% Sample the sinusoid.
subplot(2,2,1)
f=100;
xnT = sin(2*pi*f*nsound);
plot(nplot, xnT(1:length(nplot)));
title("f=100Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
xlabel("t");
ylabel("x(t)");

subplot(2,2,2)
f=200;
xnT = sin(2*pi*f*nsound);
plot(nplot, xnT(1:length(nplot)));
title("f=200Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
xlabel("t");
ylabel("x(t)");

subplot(2,2,3)
f=400;
xnT = sin(2*pi*f*nsound);
plot(nplot, xnT(1:length(nplot)));
title("f=400Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
xlabel("t");
ylabel("x(t)");

subplot(2,2,4)
f=800;
xnT = sin(2*pi*f*nsound);
plot(nplot, xnT(1:length(nplot)));
title("f=800Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
xlabel("t");
ylabel("x(t)");

