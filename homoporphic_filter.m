% Homomorphic filter
clc, clear all, close all, format compact

img = imread("lighting.JPG");
img_raw = img;

% Removes lighting effects with homoporphic filter
img = homomorph(img, 0.75);
figure, imshowpair(img_raw, img, 'montage')



% Homomorphic function
function [Ihmf] = homomorph(I, sigma)
% Takes in image, I
% Applies filter with coeff sigma
% Returns new image

I = im2double(I);
I = log(1 + I);

% Creates a filter
M = 2*size(I,1) + 1;
N = 2*size(I,2) + 1;

[X, Y] = meshgrid(1:N, 1:M);
centerX = ceil(N/2);
centerY = ceil(M/2);
gaussianNumerator = (X - centerX).^2 + (Y - centerY).^2;
H = exp(-gaussianNumerator./(2*sigma.^2));
H = 1 - H;

H = fftshift(H);
If = fft2(I, M, N);
Iout = real(ifft2(H.*If));
Iout = Iout(1:size(I,1), 1:size(I,2));
Ihmf = exp(Iout) - 1;

end