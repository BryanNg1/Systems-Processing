t = -10:10;

y = unitstep(t)-2*unitstep(t-1)+unitstep(t-4);
%time signal as defined in question
%stem used to plot the data
stem(t, y);
%labelling
xlabel('t');
ylabel('y[t]');
title('Bryan Ng 400181785 | Matthew Badal Badalian 400187878');

%Bryan Ng 400181785
%Matthew Badal Badalian 400187878
