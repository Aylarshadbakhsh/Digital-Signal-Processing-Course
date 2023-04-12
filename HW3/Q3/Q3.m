%% clear data
close all
clc
clear
%% 1st Signal pair : Rectangular pulses with lengths 4, 8 which start at n = 4, N = 21
x1=[0 0 0 1 1 1 1];
x2=[0 0 0 1 1 1 1 1 1 1 1];
n=0:1:20;
xconv1=conv(x1,x2); % linear convolution
y=circonv(x1,x2,21); %circular convolution
x1fft=fft(x1,21);
x2fft=fft(x2,21);
x3=x1fft.*x2fft;
x3ifft=ifft(x3,21);
figure()
subplot(3,1,1)
stem(n,y)
xlim([0 25])
title('circular convolution')
xlabel('time')
ylabel('amplitude')
subplot(3,1,2)
stem(n,x3ifft)
xlim([0 25])
title('IDFT')
xlabel('time')
ylabel('amplitude')
subplot(3,1,3)
n=0:1:16;
stem(n,xconv1)
title('Llinear convolution')
xlabel('time')
ylabel('amplitude')
xlim([0 25])
%% 2nd Signal pair : Rectangular pulses with lengths 7, 11 which start at n = 5, N = 21
x11=[0 0 0 0 1 1 1 1 1 1 1];
x21=[0 0 0 0 1 1 1 1 1 1 1 1 1 1 1];
n2=0:1:20;
xconv2=conv(x11,x21);
y=circonv(x11,x21,21);
x1fft=fft(x11,21);
x2fft=fft(x21,21);
x3=x1fft.*x2fft;
x3ifft=ifft(x3);
figure()
subplot(3,1,1)
stem(n2,y)
title('circular convolution')
xlabel('time')
ylabel('amplitude')
 xlim([0 25])
subplot(3,1,2)
stem(n2,x3ifft)
title('IDFT')
xlabel('time')
ylabel('amplitude')
 xlim([0 25])
subplot(3,1,3)
n1=0:1:24;
stem(n1,xconv2)
 xlim([0 25])
title('linear convolution')
xlabel('time')
ylabel('amplitude')
%% function circular shift
function y = circshift(x,m,N)
x = [x zeros(1,N-length(x))];
n = 0:1:N-1;
n = mod(n-m,N);
y = x(n+1);
end
%% function circular convolution
function y = circonv(x1,x2,N)
x1=[x1 zeros(1,N-length(x1))];
x2=[x2 zeros(1,N-length(x2))];
m = 0:1:N-1; 
x2 = x2(mod(-m,N)+1); H = zeros(N,N);
for n = 1:1:N
H(n,:) = circshift(x2,n-1,N);
end
y = x1*conj(H');
end