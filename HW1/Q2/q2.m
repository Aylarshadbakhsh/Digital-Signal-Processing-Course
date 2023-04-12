%% clear recent data 
clear,clc,close all
%% Q2. RESPONSE OF SYSTEM a=0.5
a=0.5;
b=4.5;
c=[1,-a];
n=0:100;
h = impz(b,c,n);
x=3*sin(2*pi*0.2*n); %input signal
y=conv(h,x);
figure()
stem(y)
xlabel('time')
ylabel('Amplitude')
title('response a=0.5')
xlim([0 100])
%% RESPONSE Of SYSTEM a=0.9
a=0.9;
b=[4.5];
c=[1,-a];
h = impz(b,c,n);
x=3*sin(2*pi*0.2*n);
y=conv(h,x);
figure()
stem(y)
xlabel('time')
ylabel('Amplitude')
title('response a=0.9')
xlim([0 100])
%% RESPONSE Of SYSTEM a=-0.5
a=-0.5;
b=4.5;
c=[1,-a];
h = impz(b,c,n);
x=3*sin(2*pi*0.2*n);
y=conv(h,x);
figure()
stem(y)
xlabel('time')
ylabel('Amplitude')
title('response a=-0.5')
xlim([0 100])
%% RESPONSE Of SYSTEM a=1.2
a=1.2;
b=[4.5];
c=[1,-a];
n=0:100;
h = impz(b,c,n);
x=3*sin(2*pi*0.2*n);
y=conv(h,x);
figure()
stem(y)
xlabel('time')
ylabel('Amplitude')
title('response a=1.2')
xlim([0 100])
%% square root of 4 with recursive algorithm
x=4;
y0=0.5; %initial condition y
for i= 1:8
    y=1/2*(y0+(x/y0));
    y0=y;
    disp(y0)
end
%% square root of 5 with recursive algorithm
x=5;
y0=0.5;
for i= 1:8
    y=1/2*(y0+(x/y0));
    y0=y;
    disp(y0)
end
%% square root of 16 with recursive algorithm
x=16;
y0=0.5;
for i= 1:8
    y=1/2*(y0+(x/y0));
    y0=y;
    disp(y0)
end
%% square root of 3 with recursive algorithm
x=3;
y0=0.5;
for i= 1:8
    y=1/2*(y0+(x/y0));
    y0=y;
    disp(y0)
end
%% sqaure root of 5 with different initial condition
x=5;
y0=1;
for i= 1:8
    y=1/2*(y0+(x/y0));
    y0=y;
    disp(y0)
end
%% sqaure root of 16 with different initial condition
x=16;
y0=0.2;
for i= 1:12
    y=1/2*(y0+(x/y0));
    y0=y;
    disp(y0)
end


