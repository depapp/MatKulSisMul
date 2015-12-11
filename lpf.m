p=imread('uts_sismul.jpg');
p=p(:,:,1);
Lpf=[0 1 0 ;1 5 1;0 1 0]
plot_lpf=filter2(Lpf,p,'same');
plot_lpf=mat2gray(plot_lpf)
imshow(plot_lpf);
figure,imhist(plot_lpf);