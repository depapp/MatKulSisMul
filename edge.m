I = imread('uts_sismul.jpg');
Igray = rgb2gray(I);
Iedge = im2uint8(edge(Igray,'conney',0.2));
Iedge = repmat(Iedge,[1 1 3]);
Ifinal = I + Iedge;    
imshow(Ifinal);