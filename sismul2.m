i=0:255;
binary=dec2bin(i);
for i=1:200
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
end
figure
for i=1:200
    B(i)=bin2dec(B_data(i,1:8));
end