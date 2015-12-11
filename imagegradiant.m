p=imread('romania.jpg');
p=p(:,:,1);
Robert1=[1 0; 0 -1]
Robert2=[0 1; -1 0]
Pp=filter2(Robert1,p,'same');
Ppp=filter2(Robert2,p,'same');
imshow(Pp);
figure,imshow(Ppp);