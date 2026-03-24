% Basics of vectors and matrices

clc, clearvars

x = 1:10    % vector with 1-10 values
x'  % transposition -> makes vector vertical
x = linspace(0, 100, 101)   % vector with 101 elements, from 0 to 100
y = [21 37 100 13]  % You can write vector like this
z = [21 37; 100 13] % 2x2 matrix
% x^2 % wouldm't work :c
z.^2    % element-wise operation
A = ones(3) % 3x3 matrix of ones
B = zeros(3)    % 3x3 matrix of zeros
C = eye(3)  % 3x3 identity matrix
z(2,2)  % returns value from second row and second column (indexing from 1)
x(end)    % returns the last element from the vector
x(end - 10) % returns the last element -10 positions to the left
z(2,:)  % returns the entire second row
z(2,:) = (13)   % modifies the entire second row