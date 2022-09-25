t = -10:10;

y = (t+2).*unitstep(t+2)-2*unitstep(t)-t.*unitstep(t-4);
%time signal as defined in question
%stem used to plot the data
stem(t, y, 'filled');
%labelling
xlabel('t');
ylabel('y[t]');
title('Bryan Ng 400181785 | Matthew Badal Badalian 400187878');

%Bryan Ng 400181785
%Matthew Badal Badalian 400187878