function [Af,freq,time] = dft(x,N,dt,opt)
% # Information
% [Af,freq,time] = dft(x,N,dt,opt) 
% Dicrete Fourier Transform (DFT) is used to transform time domain become frequency domain. 
% Using DFT we get information about what frequency is used in time domain signals.
% 
% # Source:
% PRESS,W.H.,(2007), NUMERICAL RECIPES,CAMBRIDGE
% 
% # INPUT PARAMETER
%  x = time domain signals (in vector)
%  N = N sample in frequency range. Default of samples number is 1024, based on power of two
%  dt = sampling interval (default dt = 0.01)
%  opt = option to show the plot result (default is 'n' [no plot]). if you input 'y', so the plot will be showed
%  
% # OUTPUT PARAMETER
%  Af = the spectrum in frequency domain
%  freq = frequency range
%  time = maximum time
%  
% # HOW TO USE THIS FUNCTION?
%  [Af,freq,time] = dft(x,N,dt,opt)
%  and you can see in: TryMyDFT3.m
%  
%  
% # Contact
%  This code was written by: Aulia Khalqillah, S.Si (2019)
%  auliakhalqillah.mail@gmail.com
%  Banda Aceh, Aceh, Indonesia

if nargin < 4
    opt = 'n';
    if nargin < 3
        dt = 0.01;
        if nargin < 2
            N = 1024;
        end
    end
end

% For time domain
time = length(x)*dt;
t = (0:dt:time-dt);

Nraw = length(x);
if Nraw < N
    N = Nraw;
end

% For frequency domain
fstep = 1/dt;
fmax = N*fstep;
freq = (0:fstep:fmax-fstep)/N;

% DFT Process
Af = zeros(1,N);
for n = 1:N
    Af(n) = complex(0,0);
    for k = 1:N
        Af(n) = Af(n) + x(k)*exp((1j*2*pi*k*n)/N);
    end
    Af(n) = Af(n) * dt;
end

option = opt;
switch option
    case 'y'
        subplot(2,1,1)
        plot(t,x)
        title('TIME SERIES')
        xlabel('Time (minutes)')
        ylabel('Amplitude')
        grid minor
        axis([min(t) max(t) min(x) max(x)])
        
        subplot(2,1,2)
        plot(freq(1:end/2),abs(Af(1:end/2)))
        title('DISCRETE FOURIER TRANSFORM')
        xlabel('Frequency (Hz)')
        ylabel('Sepctrum')
        grid minor
    otherwise
        disp('DFT process is completed')
end

end
