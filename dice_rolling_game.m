% Dice rolling game
clc, clearvars, close all, format compact

N = 1000;
% player A - wins if at least 1 #1 is rolled in 6 rolls
results = randi(6,6,N);
check1 = results == 1;
num1s = sum(check1);
winningsets = num1s >= 1;
aWin = sum(winningsets) / N

% player B - wins of at least 2 #1's are rolled in 12 rolls
results = randi(6,12,N);
check1 = results == 1;
num1s = sum(check1);
winningsets = num1s >= 2;
aWin = sum(winningsets) / N
