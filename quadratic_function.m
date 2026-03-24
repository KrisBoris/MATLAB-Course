% quadratic function

clc, clearvars, close all

x = linspace(0, 5);
y = (-(x - 3).^2) + 10;

% plot(x, y)    % draws a line
plot(x, y, '*') % draws points instead of a line