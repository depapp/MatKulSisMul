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

y1=y(4500:8000);
s1=audioplayer(y1,fs);
play(s1);
figure,plot(y1);
wavwrite(y,'a');

y2=y(9000:13000);
s2=audioplayer(y2,fs);
play(s2);
figure,plot(y2);
wavwrite(y,'i');

y3=y(13500:17000);
s3=audioplayer(y3,fs);
play(s3);
figure,plot(y3);
wavwrite(y,'u');

y4=y(18000:21500);
s4=audioplayer(y4,fs);
play(s4);
figure,plot(y4);
wavwrite(y,'e');

y5=y(22500:24000);
s5=audioplayer(y5,fs);
play(s5);
figure,plot(y5);
wavwrite(y,'o');

%jadikan comment pada script PLAY untuk mengecek vokal%