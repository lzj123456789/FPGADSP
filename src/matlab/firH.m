clc;clear; close all;

n = 0:100;

% data=(int)	  ( (0.5*sin(3.1415926*i/30)+ sin(3.1415926*i/10 ) )/1.5*127);	    data &=0x0000ffff;//16bit
data = ((0.5*sin(pi*n/12))+sin(pi*n/4))/1.5*127;
figure(1);
subplot(311);
plot(n,data);
xlabel('n');
ylabel('x(n)');
%title('$\frac{0.5 \sin(\pi n/30)+ \sin(\pi n/30)}{1.5}$')


%%
N = 32;
omega_c = 400/4800*2*pi;
n = 0:N-1;
tau = (N-1)/2;
%h_d(n)
hd = (cos((n-tau)*pi)-cos((n-tau)*omega_c))./(n-tau)/pi;
%hd(1:N/2) = -hd(1:N/2);
%hd = sin((n-tau)*omega_c)./(n-tau)/pi;
%hd(tau+1) = omega_c/pi;
%������
w = 0.54-0.46*cos(2*n*pi/(N-1));
%h(n)
h = hd.*w;
subplot(3,1,2);
stem(n,h);
xlabel('n'); ylabel('h(n)');
title('h(n)')
axis([0 N-1 min(h)-0.2 max(h)+0.2]);
%����abs(H(e^(jomega)))


%%
 C = conv(data, h, 'full');
 
 subplot(313);
 plot(C);
 xlabel('n');ylabel('x*h');
 title('After Filter');
 
 
 %%
 
 