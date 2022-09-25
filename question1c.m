t = -10:10;

y = dd(t+1)-dd(t)+unitstep(t+1)-unitstep(t-2);
%time signal as defined in question
%stem used to plot the data
stem(t, y, 'filled');
%labelling
xlabel('t');
ylabel('y[t]');
title('Bryan Ng 400181785 | Matthew Badal Badalian 400187878');

%Bryan Ng 400181785
%Matthew Badal Badalian 400187878