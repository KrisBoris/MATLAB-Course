% Monte Carlo Integration
clc, clearvars, close all, format compact

% Equation to integrate over
f = @(x) 10 + 5*sin(5*x);

% Parameters
N = 10000;  % number of points to generate randomly
a = 2;  % lower x limit
b = 4;  % upper x limit
M = 1.4*max(f(linspace(a,b)));  % upper y limit

% Generate dots
for i = 1:N

    % generate random values
    x_val = rand(1)*(b-a) + a;
    y_val = rand(1)*M;

    % compare random against the curve
    fx = f(x_val);

    % logic statement
    if y_val < fx
        under(i, 1) = x_val;
        under(i, 2) = y_val;
    else
        above(i, 1) = x_val;
        above(i, 2) = y_val;
    end
end

% Filter out zeros
under2(:,1) = nonzeros(under(:,1));
under2(:,2) = nonzeros(under(:,2));
above2(:,1) = nonzeros(above(:,1));
above2(:,2) = nonzeros(above(:,2));

% Plotting
plot(under2(:,1), under2(:,2), 'ro', 'MarkerFaceColor', 'r')
hold on
plot(above2(:,1), above2(:,2), 'bo', 'MarkerFaceColor', 'b')
title("Monte Carlo Integration"), xlabel("x"), ylabel("y")
legend("under", "above")

% Integral calculation
monte_carlo_calc = length(under2) / N * (M*(b-a))
matlab_integral = integral(f,a,b)
percent_error = abs(monte_carlo_calc - matlab_integral) / matlab_integral * 100