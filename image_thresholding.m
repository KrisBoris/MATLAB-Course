% Image thresholding (splitting on forground and background)
clc, clear all, close all, format compact

img = imread("image.JPEG");
img = rgb2gray(img);
img_raw = img;
figure, imshow(img_raw)

% Thresholding
% threshold = 0.2;    % 256 * 0.5 = 128
threshold = graythresh(img);    % Otsu method
img = imbinarize(img, threshold);
titlestr = strcat("Threshold set to: ", num2str(threshold));
figure, imshowpair(img, img_raw, 'montage'), title(titlestr)