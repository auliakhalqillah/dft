clc;clear;
% input variabel
Nraw = 200;
dt = 0.01;               % in second
time = Nraw*dt;      % time maximum in second
t = (0:dt:time-dt);    % time vector in minutes
f1 = 20;
f2 = 40;

x = cos(2*pi*f1*t)+cos(2*pi*f2*t);
noise = randn(1,length(x));
x = x+noise;

% DFT Process
N = 1024;
[Af,freq,time] = dft(x,N,dt,'y');

% FFT
fstepz = 1/dt;
fmax = N*fstepz;
freqz = (0:fstepz:fmax-fstepz)/N;
Bf = fft(x,N);
Bf = Bf./fstepz;

figure(2)
subplot(211)
plot(t,x)
title('TIME SERIES')
xlabel('Time (second)')
ylabel('Amplitude')
grid minor

subplot(212)
plot(freqz(1:end/2),abs(Bf(1:end/2)))
title('FAST FOURIER TRANSFORM')
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid minor