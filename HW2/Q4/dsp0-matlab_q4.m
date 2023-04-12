%% clear recent data 
clear,clc,close all
%% Orthogonal FIR Filters
h0=[1 2 3 4 5 6]; %original non-symmetrical filter.
h1=[6 -5 4 -3 2 -1]; %a second filter is obtained.
w=0:(2*pi/511):pi;
H0=abs(fft(h0,512)); 
H1=abs(fft(h1,512));
plot(w,H0(1:256));
hold on;
plot(w,H1(1:256));
axis([0 pi 0 22]);
title('frequency responses ');
legend('h0','h1')
xlabel('frequency')
ylabel('magnitude')
%% Mirror FIR Filters
h0=[1 3 1 4 1 3 1]; 
h1=[1 -3 1 -4 1 -3 1]; 
w=0:(2*pi/511):pi;
H0=abs(fft(h0,512));
H1=abs(fft(h1,512));
figure()
plot(w,H0(1:256)); hold on;
plot(w,H1(1:256));
axis([0 pi 0 16]);
title('frequency response ');
legend('h0','h1')
xlabel('frequency')
ylabel('magnitude')
