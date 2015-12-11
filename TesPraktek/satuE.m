clear all;
f=262;
fs=16000;
t=0:1/fs:1.0;
y=4*sin(2*pi*f*t);
sound(y,fs);
plot(t,y); axis([0 0.1 -1 1]);
title('Sinyal Sinus (f=262 Hz), sampling 16000 Hz');
wavwrite(y,'sinus1');