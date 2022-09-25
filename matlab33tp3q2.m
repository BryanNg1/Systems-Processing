% Use sinusoid frequency f = 200 Hz
clc
clear
for i = 0:1:3
    
    if(i==0)
        f = 200;
    end
    if(i==1)
        f = 100;
    end
    if(i==2)
        f = 400;
    end
    
    if(i==3)
        f = 800;
    end
    
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
    xnT = sin(2*pi*f*nsound);
    
    subplot(2,2,i+1)
    plot(nplot, xnT(1:length(nplot)))
    if(f==200)
        title("f=200Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
        audiowrite("soundfile200.wav", xnT, fs);
    end
    if(f==100)
        title("f=100Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
        audiowrite("soundfile100.wav", xnT, fs);
    end
    if(f==400)
        title("f=400Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
        audiowrite("soundfile400.wav", xnT, fs);
    end
    if(f==800)
        title("f=800Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
        audiowrite("soundfile800.wav", xnT, fs);
    end
    xlabel("t");
    ylabel("x(t)");
    
end

%concatenation

%reads the signals into one dimension matrix with freq Fs
[signal100, Fs] = audioread("soundfile100.wav");
[signal200, Fs1] = audioread("soundfile200.wav");
[signal400, Fs2] = audioread("soundfile400.wav");
[signal800, Fs3]= audioread("soundfile800.wav");

% C1 = cat(1,signal100',signal200');
% C2 = cat(1,signal400',signal800');
% C3 = cat(1,C1,C2);

%concatenates 4 signals/onedimension matrices to 1 
%apostrophe transposes the matrices and makes them horizontal
C1 = horzcat(signal100', signal200');
C2 = horzcat(signal400', signal800');
C3 = horzcat(C1,C2);
audiowrite("concatenation.wav", C3, Fs);

