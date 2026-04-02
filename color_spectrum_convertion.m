% Color spectrums convertions
clc, clear all, close all, format compact

img = imread("image.JPEG");
img_raw = img;

% [R. G. B] = imsplit(img);

R = img_raw(:,:,1);
G = img_raw(:,:,2);
B = img_raw(:,:,3);
figure, imshow(R), pause(0.5), title("Red")
figure, imshow(G), pause(0.5), title("Green")
figure, imshow(B), pause(0.5), title("Blue")