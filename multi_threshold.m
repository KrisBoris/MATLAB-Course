% Image multi-thresholding
clc, clear all, close all, format compact

img = imread("image.JPEG");
img = rgb2gray(img);
img_raw = img;

figure, imshow(img_raw);

% Multiple thresholding
splits = 5;
thresh = multithresh(img, splits);  % multi-level Otsu's method
img = imquantize(img, thresh);
img = img - 1;
img = img./ splits; % scale between o and 1
figure, imshowpair(img_raw, img, 'montage')