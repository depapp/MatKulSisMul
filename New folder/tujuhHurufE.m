clear all;
fs=8000;
y=wavread('aiueo.wav');
suara=audioplayer(y,fs);
figure,plot(y);

A1=min(y);
A2=max(y);
t=length(y);
x1=0;
x2=t;
axis([x1 x2 A1 A2]);

y1=y(25000:31000);
ee=audioplayer(y1,fs);
play(ee);
figure,plot(y1);
wavwrite(y1,'suaraE');