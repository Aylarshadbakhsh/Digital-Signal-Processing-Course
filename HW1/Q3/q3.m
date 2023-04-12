%% clear recent data 
clear,clc,close all
%%  Rectangular Window L1=10
 L1=10;
 w1=myrect(L1);
 figure()
 subplot(2,1,1)
 plot(w1)
 ylim([0 1.5])
 title('rect L=10')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w1,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Rectangular Window L2=50
 L2=50;
 w1=myrect(L2);
 figure()
 subplot(2,1,1)
 plot(w1)
 ylim([0 1.5])
 title('rect L=50')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w1,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Reectangular Window L3=101
 L3=101;
 w1=myrect(L3);
 figure()
 subplot(2,1,1)
 plot(w1)
 title('rect L=101')
 xlabel('time')
 ylabel('amplitude')
 ylim([0 1.5])
 [h,w] = freqz(w1,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Bartlett Window L1=10
 %L=10
 w2=mybartlett(L1);
 figure()
 subplot(2,1,1)
 plot(w2)
 title('Bartlett L=10')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w2,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(db)')
 %% Bartlett Window L2=50
  w2=mybartlett(L2);
 figure()
 subplot(2,1,1)
 plot(w2)
 title('Bartlett L=50')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w2,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Bartlett Window L3=101
 w2=mybartlett2(L3);
 figure()
 subplot(2,1,1)
 plot(w2)
 title('Bartlett L=101')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w2,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Hannig Window L1=10
 w3=myhanning(L1);
 figure()
 subplot(2,1,1)
 plot(w3)
 title('Hanning L=10')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w3,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Hanning Window L2=50
 w3=myhanning(L2);
 figure()
 subplot(2,1,1)
 plot(w3)
 title('Hanning L=50')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w3,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Hanning Window L3=101
 w3=myhanning(L3);
 figure()
 subplot(2,1,1)
 plot(w3)
 title('Hanning L=101')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w3,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Hamming Window L1=10
 w4=myhamming(L1);
 figure()
 subplot(2,1,1)
 plot(w4)
 title('Hamming L=10')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w4,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Hamming Window L2=50
 w4=myhamming(L2);
 figure()
 subplot(2,1,1)
 plot(w4)
 title('Hamming L=50')
 xlabel('time')
 ylabel('amplitude')
  [h,w] = freqz(w4,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
  %% Hamming Window L3=101
 w4=myhamming(L3);
 figure()
 subplot(2,1,1)
 plot(w4)
 title('Hamming L=101')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w4,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Blackman Window L1=10
 %L1=10;
 w5=myblackman(L1);
 figure()
 subplot(2,1,1)
 plot(w5)
 title('Blackman L=10')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w5,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Blackman Window L2=50
 w5=myblackman(L2);
 figure()
 subplot(2,1,1)
 plot(w5)
 title('Blackman L=50')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w5,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% Blackman Window L3=101
 w5=myblackman(L3);
 figure()
 subplot(2,1,1)
 plot(w5)
 title('Blackman L=101')
 xlabel('time')
 ylabel('amplitude')
 [h,w] = freqz(w5,1,-pi:pi/1000:pi);
 subplot(2,1,2)
 plot(w/pi,10*log10(abs(h)))
 title('DTFT of window')
 xlabel('frequency(*pi rad)')
 ylabel('magnitude(dB)')
 %% FUNCTIONS
function R = myrect(M)
	R=zeros(0,M);
   for i=1:M
		R(i)=1;
   end
end

function R=mybartlett(M)
	R=zeros(0,M);
    for i=1:(M/2)
		R(i)=2*i/M;
    for k=(M/2):M
        R(k)=2-(2*k/M);
    end   
    end
end

function R = myhanning(M)
	R=zeros(0,M);
	for i=1:M
		R(i)=0.5*(1-(cos(2*pi*i/(M-1))));
	end
end

function R = myhamming(M)
	R=zeros(0,M);
	for i=1:M
		R(i)=0.54-0.46*(cos(2*pi*i/(M-1)));
	end
end

function R = myblackman(M)
	R=zeros(0,M);
	for i=1:M
		R(i)=0.42-0.5*(cos(2*pi*i/(M-1)))+0.08*(cos(4*pi*i/(M-1)));
	end
end
%for odd M 
function R=mybartlett2(M)
	 R=zeros(0,M);
     for i=1:((M+1)/2)
		 R(i)=(2*i/M);
     for k=((M+1)/2):M
         R(k)=2-(2*k/M);
     end   
     end
end
 
