% Image blur
clc, clear all, close all, format compact

img = imread("image.JPEG");
img_raw = img;

% Bluring
blur = fspecial('average', 100);  % blur mask
img = imfilter(img, blur);

figure, imshowpair(img_raw, img, 'montage')

% Usage in thresholding
img = rgb2gray(img);
threshold = 0.6;
img = imbinarize(img, threshold);
figure, imshowpair(img_raw, img, 'montage');