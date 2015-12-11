p=imread('uts_sismul.jpg');
p=p(:,:,1);
q=histeq(p);
imshow(q),figure,imhist(q),axis tight