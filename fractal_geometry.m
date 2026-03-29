% Fractal geometry
clc, clearvars, close all, format compact

% Input parameters
tri_base = 10;  % equilateral triangle's base
n = 100;
init_point = [5, 3];

% Starting calcs
pt1 = [0, 0];   % bottom left vertex
pt2 = [0.5*tri_base, tri_base*cos(30*pi/180)];  % top vertex
pt3 = [tri_base, 0];

current_pos = init_point;

for i = 1:n

    % pick random vertex
    event = randi(3);

    % calculate midpoints
    switch event
        case 1
            calc_midpoint(current_pos, pt1);
        case 2
            calc_midpoint(current_pos, pt2);
        case 3
            calc_midpoint(current_pos, pt3);
    end

end

function [mid_point] = calc_midpoint(current_pos, target_pos) 
    mid_point(1) = (current_pos(1) + current_pos(2)) / 2;
    mid_point(2) = (target_pos(1) + target_pos(2)) / 2;
end