% Morphological operations
clc, clear all, close all, format compact

img = imread("mountains.JPG");
img = rgb2gray(img);
img_raw = img;

% Thresholding
threshold = 0.35;
img = imbinarize(img, threshold);
figure, imshowpair(img_raw, img, 'montage')
img_thresh = img;

% Morphological operations
% open -> all white pixels of that size are kept, rest black (erode, dilate)
% close -> all black pixels of that size are kept, rest white (dilate, erode)

% isolate landmases
SE = strel('disk', 20); % disk-shaped objects, 20 pixels size
img = imclose(img, SE);
figure, imshowpair(img_raw, img, 'montage')

img = imopen(img, SE);
figure, imshowpair(img_raw, img, 'montage')

white_pixels = sum(sum(img == 1))
black_pixels = sum(sum(img == 0))
white_black_ratio = white_pixels / (white_pixels + black_pixels) * 100
img_size = size(img)