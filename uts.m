I = imread('uts_sismul.jpg');
K = filter2(fspecial('average',3),I)/255;
figure, imshow(K)