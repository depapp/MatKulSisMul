p=imread('uts_sismul.jpg');
p=p(:,:,1);
Lpf=[0 1 0 ;1 5 1;0 1 0]
plot_lpf=fspecial('gaussian',5,1.0);
test=imfilter(p,plot_lpf,'same');
imshow(test);


