cam = imread('Cameraman.bmp');
Px = [1, -1; 0, 0];
Py = [-1,0,1;-1,0,1;-1,0,1];
px = filter2(Px,cam);
py = filter2(Py,cam);
edge_cam = uint8(sqrt(px.^2 + py.^2));
imshow(edge_cam);