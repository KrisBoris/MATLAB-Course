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

% separates into four separate variables (dx, dy, conf, time)
dx = data(:, 1);
dy = data(:, 2);
conf = data(:, 3);
time = data(:, 4);

% calculates the average velocity in x (roughly dx / dt)
vx = dx(1 : end-1)./ diff(time);
vx_avg = mean(vx);
fprintf("The average x velocity is %0.2f\n", vx_avg);

% calculates the average velocity in y (roughly dy / dt)
vy = dy(1 : end - 1)./ diff(time);
vy_avg = mean(vy);
fprintf("The average y velocity is %0.2f\n", vy_avg);

% draws a plot
x_cumu = cumsum(dx);
y_cumu = cumsum(dy);

figure(1), plot(x_cumu, y_cumu, '-mo'), hold on
plot(x_cumu(1), y_cumu(1), 'og', 'MarkerFaceColor','g')
plot(x_cumu(end), y_cumu(end), 'sr', 'MarkerFaceColor', 'r')

title("Robot path over time"), xlabel("X position"), ylabel("Y position")
grid on, hold off
legend('path', 'start', 'end', 'location', 'southwest')

% creates a message with final time
msg = strcat("Total time: ", string(time(end)), " [s]");
text(-1.9, 2.1, msg);