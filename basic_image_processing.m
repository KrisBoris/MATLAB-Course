% Basic image processing
clc, clear all, close all, format compact

% load an image into the workspace
img = imread("image.JPEG");

% rotates image
img = imrotate(img, 90);

% displays image on figure
imshow(img)

% saves new image
imwrite(img, "image2.jpeg");