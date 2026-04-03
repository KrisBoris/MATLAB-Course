% Noise filtering
clc, clear all, close all, format compact

img = imread("mountains.JPG");
img = rgb2gray(img);
img_raw = img;

img = im2double(img);

% creates a noise
dims = size(img_raw);
noise = randn(dims)./10;
% img = img + noise;
img = imnoise(img, 'speckle', 0.1);

figure, imshowpair(img_raw, img, 'montage')

% Filtering out noise with median filter
img_unfiltered = img;
img = medfilt2(img);
figure, imshowpair(img_unfiltered, img, 'montage')