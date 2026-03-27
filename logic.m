% Trigonometry functions
clc, clearvars, close all

max_x = 2*pi;
x = linspace(0, max_x, 100000);
y = sin(x);
y_check = 0.8;

plot(x, y, 'g'), hold on, plot([0 max_x], [y_check y_check], 'r')
grid on

y_greater = y > y_check;
final_percentage = sum(y_greater) / length(y)
