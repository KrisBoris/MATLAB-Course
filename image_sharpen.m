% Image sharpen
clc, clear all, close all, format compact

img = imread("mountains.JPG");
img_raw = img;

% Sharpen image
img = imsharpen(img, 'Amount', 2, 'Radius', 1);
figure, imshowpair(img_raw, img, 'montage')

% Usage in threshold detection
img = rgb2gray(img);
threshold = 0.3;
img = imbinarize(img, threshold);
figure, imshowpair(img_raw, img, 'montage')