fs=8000;
t=0:1/fs:0.25;
c=sin(2*pi*262*t);
d=sin(2*pi*294*t);
e=sin(2*pi*330*t);
f=sin(2*pi*349*t);
g=sin(2*pi*392*t);
a=sin(2*pi*440*t);
b=sin(2*pi*494*t);
c1=sin(2*pi*277*t);
nol=zeros(size(t));
unyil=[c,c,c,d,d,e,e,e,g,g,e,e,e,d,d,c,c,c,g,c,g,e,d,c,c,d,e,g];
sound(unyil,fs);
wavwrite(y,'unyil');