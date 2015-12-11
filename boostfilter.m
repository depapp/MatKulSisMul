p=imread('uts_sismul.jpg');
p=p(:,:,1);

p=mat2gray(p);
a=1.4*p;
p_unsharp=a-test;
figure;
imshow(p_unsharp);