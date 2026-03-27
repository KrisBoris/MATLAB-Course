% Data types
clc, clearvars, format compact

matrix_2d = [1, 2, 3;
            4, 5, 6]
matrix_2d = [1 2 3;
            4 5 6]
matrix_2d = [1 2 3; 4 5 6]  % all matrices are the same

vector = -10:2:10

magic_numbers = magic(3)    % creates a magic square 3x3

data = readmatrix("robot_data.csv");

% accessing vector
v1 = linspace(-20, 40, 50);
v1(1), v1(end), v1(length(v1)), v1(1:5)

% other vector operations
v2 = v1(1:2:30)
length(v2), v2(end - 3 : end) = [], length(v2)  % removes the last 4 elements
v2(1:5) = linspace(-5, 5, 5)    % updates the first 5 elements

% matrix operations
data(5:5:15,:)  % display row 5, 10 and 15 and all values within them
                % comma separates rows from columns

data2 = data;
data2(1,1:2) = [0.2 0.2];

% speed trials
time = [12 41 8 15 12]; % mins
dist = [22 31 17 30 25]; % km
km_per_h = dist./ (time / 60)
dist = dist.* dist