p=imread('uts_sismul.jpg');
figure;
p=rgb2gray(p);
figure(1);

s=imadjust(p,[0.3,0.6],[0.0,1.0],0.25);

q=histeq(s);
subplot(1,2,1); imhist(q);
subplot(1,2,2); imshow(q);

r=medfilt2(q);
figure(2);
imshow(r);