% Robot Pathfinding Project
clc, clearvars, close all, format compact

data = readmatrix("robot_data.csv");
length(data);

% removes empty cells
data(51:60, : ) = [];
length(data);

% adds "time" parameter
data(:, 4) = linspace(0, 20, length(data));

% corrects data
data(1, 1:2) = [0.2 0.2];

% removes low confidence rows [27 & 35]
data([27, 35], :) = [];
length(data)
