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

% remove one of the colors
B(:,:) = 0;

% recombines color channels into image
recreated = cat(3, R, G, B);
figure, imshow(recreated)

% Hue Saturation Value
img = rgb2hsv(img_raw);
% [H, S, V] = imsplit(img);
H = img(:,:,1); S = img(:,:,2); V = img(:,:,3);
H(:,:) = 0;
recreated2 = cat(3, H, S, V);
figure, imshow(recreated2)