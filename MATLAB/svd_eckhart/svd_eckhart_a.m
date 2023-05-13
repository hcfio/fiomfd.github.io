% svd_eckhart.m
%%%%%%%%%%%%%%%%%%%%
% load image file
RGB=imread('eckhart.jpg');
A=im2gray(RGB);
% uint8 -> float64
B=double(A);
% A20
[U20,S20,V20]=svds(B,20);
B20=U20*S20*V20';
A20=uint8(B20);
% A50
[U50,S50,V50]=svds(B,50);
B50=U50*S50*V50';
A50=uint8(B50);
% A80
[U80,S80,V80]=svds(B,80);
B80=U80*S80*V80';
A80=uint8(B80);
% plot A(n)
subplot(2,2,1);
imshow(A);
title('A, 480 by 640, rank(A)=480');
subplot(2,2,2);
imshow(A20);
title('A(20)');
subplot(2,2,3);
imshow(A50);
title('A(50)');
subplot(2,2,4);
imshow(A80);
title('A(80)');


