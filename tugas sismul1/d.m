clc
clear all
f=25
t=0:0.0001:1/f;
y=3*cos(2*f*pi*t);
plot(t,y) 
title('plot')
grid
