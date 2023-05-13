% define f(x,y)
A=imread('regular_triangle.png');
B=rgb2gray(A);
f=imresize(B, 1/5);
% xray transform of f
theta=0:180;
[Xf,t]=radon(f,theta);
% backprojection of Xf
F=iradon(Xf,theta);
U=iradon(Xf,theta,'linear','none');
% original image
imshow(f);
title('Original Grayscale Image');
% x-ray transform
imagesc(theta,t,Xf);
title('Xf(\theta,t) the X-ray transform of f(x,y)');
xlabel('\theta [degrees]');
ylabel('t');
set(gca,'XTick',0:20:180);
colormap(hot);
colorbar;
% ufbp
imshow(U,[]);
title('Unfiltered Backprojection');
% fbp
imshow(F,[]);
title('Filtered Backprojection');
