% quadratic function

clc, clearvars, close all

x = linspace(0, 5);
y = (-(x - 3).^2) + 10;   % anonymous function
y2 = @(x) (-(x - 3).^2) + 10;

% plot(x, y)    % draws a line
% plot(x, y, '*') % draws points instead of a line

[maxVal, index] = max(y)    % max value and it's index
y2(2.137)

figure(1)
subplot(2, 2, 1)
plot(x, y, 'gx')
xlabel('x'), ylabel("Ooo Panie, to Ty na mnie spojrzałeś!"), 
title("Jak to jest być skrybą, dobrze?")
grid on
legend("Y1")

% hold on
% figure(2) % Puts the plot in the separate window/tab
subplot(2, 2, 2)
plot(x, 2*y, 'bo')
xlabel('iksy'), ylabel('igreki'), title("Placeholder")
grid minor
legend("Y2")