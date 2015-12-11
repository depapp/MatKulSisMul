clear all;
fs=8000;
y=wavread('jandika.wav');
suara=audioplayer(y,fs);
figure,plot(y);

A1=min(y);
A2=max(y);
t=length(y);
x1=0;
x2=t;
axis([x1 x2 A1 A2]);

y1=y(6000:10000);
s1=audioplayer(y1,fs);
%play(s1);
figure,plot(y1);
wavwrite(y,'jan');

y2=y(10500:13000);
s2=audioplayer(y2,fs);
%play(s2);
figure,plot(y2);
wavwrite(y,'di');

y3=y(13500:16000);
s3=audioplayer(y3,fs);
play(s3);
figure,plot(y3);
wavwrite(y,'ka');

%comment pada script PLAY untuk mengetahui vokal yang dihasilkan