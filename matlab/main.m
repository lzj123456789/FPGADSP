clc; clear; close all;
%% ¸ßÍ¨ÂË²¨Æ÷
%N=32?
N = 32;
omega_c = 200/4800*2*pi;
n = 0:N-1;
tau = (N-1)/2;
%h_d(n)
hd = (cos((n-tau)*pi)-cos((n-tau)*omega_c))./(n-tau)/pi;
%hd(1:N/2) = -hd(1:N/2);
%hd = sin((n-tau)*omega_c)./(n-tau)/pi;
%hd(tau+1) = omega_c/pi;
%´°º¯Êý
w = 0.54-0.46*cos(2*n*pi/(N-1));
%h(n)
h = hd.*w;
%»­³öh(n)
figure;
subplot(3,1,1);
stem(n,h);
xlabel('n'); ylabel('h(n)');
title('h(n) and H(e^{j\omega})')
axis([0 N-1 min(h)-0.2 max(h)+0.2]);
%»­³öabs(H(e^(jomega)))
omega = 0:pi/200:pi;
H = zeros(1,201);
for k = 1:N
    H = H+h(k)*exp(-i*omega*(k-1));
end
%
subplot(3,1,2);
plot(omega/pi,abs(H))
xlabel('\omega(\pirad/s)');
ylabel('|H(e^{j\omega})|');
axis([0 1 0 1.1]);
subplot(3,1,3);
plot(omega/pi,20*log10(abs(H)));
xlabel('\omega(\pirad/s)');
ylabel('20lg(|H(e^{j\omega})|)');
axis([0 1 min(20*log10(abs(H)))-1 0.1])
%Êä³ö¶ÔÓ¦µÄÓÐ·ûºÅÊý
h = h * 2^15;
h = round(h);
h_bin = complement(h,16);
for i = 1:N
    fprintf(['5''b', dec2bin(i-1,5),': h_n = 16''b',h_bin(i,:),';\n']);
end



%% µÍÍ¨ÂË²¨Æ÷I=3
clear;
fprintf('\n \n \n');
%64½×?
N = 64;
omega_c = pi/4;
n = 0:N-1;
tau = (N-1)/2;
%h_d(n)
hd = (sin((n-tau)*omega_c))./(n-tau)/pi;
%´°º¯Êý
w = 0.54-0.46*cos(2*n*pi/(N-1));
%
h = hd.*w*3;
%»­³öh(n)
figure;
subplot(3,1,1);
stem(n,h);
xlabel('n'); ylabel('h(n)');
title('h(n) and H(e^{j\omega})')
axis([0 N-1 min(h)-0.2 max(h)+0.2]);
%abs(H(e^(jomega)))
omega = 0:pi/200:pi;
H = zeros(1,201);
for k = 1:N
    H = H+h(k)*exp(-i*omega*(k-1));
end
%
subplot(3,1,2);
plot(omega/pi,abs(H))
xlabel('\omega(\pirad/s)');
ylabel('|H(e^{j\omega})|');
axis([0 1 0 3.3]);
subplot(3,1,3);
plot(omega/pi,20*log10(abs(H)));
xlabel('\omega(\pirad/s)');
ylabel('20lg(|H(e^{j\omega})|)');
axis([0 1 min(20*log10(abs(H)))-1 20])
h = h * 2^15 ;
h = round(h);
h_bin = complement(h,16);
%µ¹ÐòÊä³ö
for i = 64:-1:1
    fprintf(['6''b', dec2bin(i-1,6),': h_n = 16''b',h_bin(i,:),';\n']);
end

%% µÍÍ¨ÂË²¨Æ÷I=4
clear;
fprintf('\n \n \n');
%64½×?
N = 64;
omega_c = pi/4;
n = 0:N-1;
tau = (N-1)/2;
%h_d(n)
hd = (sin((n-tau)*omega_c))./(n-tau)/pi;
%´°º¯Êý
w = 0.54-0.46*cos(2*n*pi/(N-1));
%ï¿½ï¿½ï¿½äº¯ï¿½ï¿½Ïµï¿½ï¿½
h = hd.*w*4;
%»­³öh(n)
figure;
subplot(3,1,1);
stem(n,h);
xlabel('n'); ylabel('h(n)');
title('h(n) and H(e^{j\omega})')
axis([0 N-1 min(h)-0.2 max(h)+0.2]);
%abs(H(e^(jomega)))
omega = 0:pi/200:pi;
H = zeros(1,201);
for k = 1:N
    H = H+h(k)*exp(-i*omega*(k-1));
end
%
subplot(3,1,2);
plot(omega/pi,abs(H))
xlabel('\omega(\pirad/s)');
ylabel('|H(e^{j\omega})|');
axis([0 1 0 4.4]);
subplot(3,1,3);
plot(omega/pi,20*log10(abs(H)));
xlabel('\omega(\pirad/s)');
ylabel('20lg(|H(e^{j\omega})|)');
axis([0 1 min(20*log10(abs(H)))-1 20])
h = h * 2^15 ;
h = round(h);
h_bin = complement(h,16);
%µ¹ÐòÊä³ö
for i = 64:-1:1
    fprintf(['6''b', dec2bin(i-1,6),': h_n = 16''b',h_bin(i,:),';\n']);
end
