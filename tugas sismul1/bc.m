clc
clear all
fs=1000
f=50
t=0:0.01/fs:1/f;
y=3*cos(2*f*pi*t);
subplot(2,1,1)
stem(t,y) 
title('stem fs 1000')
grid

fss=75
tt=0:0.01/fss:1/f;
yy=3*cos(2*f*pi*tt);
subplot(2,1,2)
stem(tt,yy)
title('stem fs 75')
grid