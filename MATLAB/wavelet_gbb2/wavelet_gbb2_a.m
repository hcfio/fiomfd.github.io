% wavelet_gbb2.m
%%%%%%%%%%%%%%%%%%%%
% load image file
RGB=imread('fl2.jpg');
G=im2gray(RGB);
A=imresize(G, 1/5);
% multiresolution decomposition
[C,S]=wavedec2(A,3,'haar');
A1=appcoef2(C,S,'haar',1);
A2=appcoef2(C,S,'haar',2);
A3=appcoef2(C,S,'haar',3);
% plot A(n)
subplot(2,2,1);
imagesc(A);
colormap('gray');
title('Level 0, i.e., Original Omage');
subplot(2,2,2);
imagesc(A1);
colormap('gray');
title('Approximation of Level 1');
subplot(2,2,3);
imagesc(A2);
colormap('gray');
title('Approximation of Level 2');
subplot(2,2,4);
imagesc(A3);
colormap('gray');
title('Approximation of Level 3');



