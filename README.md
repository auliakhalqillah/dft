# dft
Discrete Fourier Transform (DFT) program based on Matlab code.
# Information
```
[Af,freq,time] = dft(x,N,dt,opt) 
Dicrete Fourier Transform (DFT) is used to transform time domain become frequency domain. Using DFT we get information about what frequency is used in time domain signals.
```
# Source:
PRESS,W.H.,(2007), NUMERICAL RECIPES,CAMBRIDGE

# INPUT PARAMETER
```
 x = time domain signals (in vector)
 N = N sample in frequency range. Default of samples number is 1024, based on power of two
 dt = sampling interval (default dt = 0.01)
 opt = option to show the plot result (default is 'n' [no plot]). if you input 'y', so the plot will be showed
```
# OUTPUT PARAMETER
```
 Af = the spectrum in frequency domain
 freq = frequency range
 time = maximum time
``` 
# HOW TO USE THIS FUNCTION?
```
 [Af,freq,time] = dft(x,N,dt,opt)
 and you can see in: TryMyDFT3.m
```
# Contact
 This code was written by: Aulia Khalqillah, S.Si (2019)
 [auliakhalqillah.mail@gmail.com],
 Banda Aceh, Aceh, Indonesia
