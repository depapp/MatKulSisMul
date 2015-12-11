p=imread('uts_sismul.jpg');
p=p(:,:,1);
Hpf=[-1 0 1; -2 0 2; -1 0 1]
plot_hpf=filter2(Hpf,p,'same');
plot_hpf=mat2gray(plot_hpf)
imshow(plot_hpf);
figure,imhist(plot_hpf);