%ADC
clear all;
close all;
clc;
fs=500000; %taking sampling frequency as 500kHz
fm=10000; %input signal frequency 10kHz
t=1:200; %displaying 200 samples
x=5*cos(2*pi*(fm/fs)*t); %input sinusoidal signal
z=awgn(x,1); %adding white gauge Gaussian noise to the input signal with S/N=1
h=1:1000;
plot(t,x,'g','LineWidth',2);
hold on;
plot(t,z,'r','Linewidth',1.5);
hold on;
stem(t,z);
hold on;
Vd=-5:0.0390625:5;
for i=1:256
    Vdelta(i)=(Vd(i)+Vd(i+1))/2; %Quantization Levels
end

i=0:255;
binary=dec2bin(i); %decimal to binary conversion
for i=1:200 %Quantization of input signal
    for j=1:256
        if(z(i)<Vd(1))
            z(i)=Vdelta(1);
        end
        if(z(i)>Vd(256))
            z(i)=Vdelta(256);
        end
        if(z(i)<=Vd(j+1) && z(i)>=Vd(j))
            z(i)=Vdelta(j);
        end
    end
end
%Encoding the Quantized data
for i=1:200
    for j=1:256
    if(z(i)==Vdelta(j))
        B_data(i,1:8) = binary(j,1:8);
    end
    end
end %representing binary data in decimal
figure
for i=1:200
    B(i)=bin2dec(B_data(i,1:8));
end

%write to txt
f = fopen('ADC.txt', 'w');
for n = 1:200
    fprintf(f, '%s\n', B_data(n,1:8));
end
fclose(f);

subplot(221);
plot(x);
title('original sinwave','fontsize',12);
xlabel('--->time in 2us');
ylabel('--->amplitude in volts');
subplot(222);
plot(z);
title('noise signal','fontsize',12);
xlabel('--->time in 2us');
ylabel('--->amplitude in volts');
f=fopen('vhdl_out.txt','r');
A=fscanf(f,'%g',[1 inf]);
fclose(f);

subplot(224);
plot(B);
title('signal with white gaussian noise','fontsize',12);
xlabel('--->time in 2us');
ylabel('--->amplitude in decimal'); %Digital to analog conversion
%for i=1:192
%    for j=1:256
%      if(A(i)== j )
%          outpt(i)=Vdelta(j);
%      end
%    end
%end
%subplot(223);
%plot(outpt);
title('filtered sine wave sinewave output','fontsize',12);
xlabel('--->time in 2us');
ylabel('--->amplitude in decimal');