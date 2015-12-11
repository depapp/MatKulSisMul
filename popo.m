i = imread('uts_sismul.jpg');
I = rgb2gray(i);

BW2= edge(I,'sobel');
BW3= edge(I,'roberts');
subplot (2,2,1);
imshow(I);
title('original');
subplot(2,2,2); 
imshow(BW2);
title('Sobel');
subplot(2,2,4);
