function y = unitstep(x)


% The unit step function, u(x).
if (nargin ~= 1)
    disp("unit step requires 1 argument!");
    return
end
y = cast(x >= 0, class(x));

%Bryan Ng 400181785
%Matthew Badal-Badalian 400187878