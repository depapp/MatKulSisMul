clear all;
f=800;
fs=16000;
t=0:0.001:1.0;
y=0.5+sin(2*pi*f*t);
sound(y,fs);
plot(t,y); axis([0 0.1 -1 1]);
title('Sinyal Sinus (f=800 Hz), sampling 16000 Hz');