clc
clear all
f=50
t=0:0.000001:1/f;
y=3*cos(2*f*pi*t);
plot(t,y) 
title('plot')
grid
