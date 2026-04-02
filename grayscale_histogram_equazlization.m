% Grayscale and histogram equalization
clc, clear all, close all, format compact

img = imread("image.JPEG");
figure, imshow(img)

img = rgb2gray(img);
figure, imshow(img)

figure, imhist(img);

img_raw = img;

img = histeq(img);
figure, imshow(img)
figure, imhist(img)

figure, imshowpair(img_raw, img, "montage")