% Use sinusoid frequency f = 200 Hz
clc
clear
for i = 0:1:3
    
    if(i==0)
        f = 7200;
    end
    if(i==1)
        f = 7600;
    end
    if(i==2)
        f = 7800;
    end
    
    if(i==3)
        f = 7900;
    end
    
    % Sampling frequency and interval
    fs = 500000;
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
    if(f==7200)
        title("f=7200Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
        audiowrite("soundfile7200.wav", xnT, fs);
    end
    if(f==7600)
        title("f=7600Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
        audiowrite("soundfile7600.wav", xnT, fs);
    end
    if(f==7800)
        title("f=7800Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
        audiowrite("soundfile7800.wav", xnT, fs);
    end
    if(f==7900)
        title("f=7900Hz Bryan Ng 400181785 Matthew Badal Badalian 400187878")
        audiowrite("soundfile7900.wav", xnT, fs);
    end
    xlabel("t");
    ylabel("x(t)");
    
end

%concatenation

%reads the signals into one dimension matrix with freq Fs
[signal7200, Fs] = audioread("soundfile7200.wav");
[signal7600, Fs1] = audioread("soundfile7600.wav");
[signal7800, Fs2] = audioread("soundfile7800.wav");
[signal7900, Fs3]= audioread("soundfile7900.wav");

%concatenates 4 signals/onedimension matrices to 1 
%apostrophe transposes the matrices and makes them horizontal
C1 = horzcat(signal7200', signal7600');
C2 = horzcat(signal7800', signal7900');
C3 = horzcat(C1,C2);
audiowrite("concatenation2.wav", C3, Fs);
