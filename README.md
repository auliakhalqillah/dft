# MATLAB: Discrete Fourier Transform
Discrete Fourier Transform (DFT) program based on Matlab code. DFT is used to transform time domain become frequency domain. Using DFT we get information about what frequency is used in time domain signals.

# USAGE
You can use TryMyDFT3.m file to exercise this function 
```
 [Af,freq,time] = dft(x,N,dt,opt)
```
### INPUT PARAMETER
```
 x = time domain signals (in vector)
 N = N sample in frequency range. Default of samples number is 1024, based on power of two
 dt = sampling interval (default dt = 0.01)
 opt = option to show the plot result (default is 'n' [no plot]). if you input 'y', so the plot will be showed
```
### OUTPUT PARAMETER
```
 Af = the spectrum in frequency domain
 freq = frequency range
 time = maximum time
``` 
# SOURCE
[Levent Sevgi,2007,Numerical fourier transforms: DFT and FFT](https://www.researchgate.net/publication/3305825_Numerical_fourier_transforms_DFT_and_FFT)
# CONTACT
 This code was written by Aulia Khalqillah,S.Si.,M.Si.(2020)<br>
 Email:auliakhalqillah.mail@gmail.com<br>
 Banda Aceh,Aceh,Indonesia
