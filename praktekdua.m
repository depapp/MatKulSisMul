fs=8000;
t=0:1/fs:2;
f = 10000*t;
v=0.5*cos(2*pi*(f.*t));
sound(v,fs);
plot(t,v);
title('2 nada');
axis([0 1 -1 1]);