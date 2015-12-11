clc
clear all
f=25
t=0:0.0001:1/f;
y=3*cos(2*f*pi*t);
subplot(2,1,1)
plot(t,y) 
title('plot')
grid

fs=75
tt=0:00.1/fs:1/f;
yy=3*cos(2*f*pi*tt);
subplot(2,1,2)
stem(tt,yy)
title('stem fs 75')
grid
