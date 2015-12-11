p=imread('uts_sismul.jpg');
p=p(:,:,1);
q=imadjust(p,[0,1],[1,0],2);
imshow(q);
figure;imhist(q);
