% MP4 video file
clc, clearvars, close all, format compact

% creates a writer object
writerObj = VideoWriter("CosVideo"); % Name of the video file
open(writerObj);

% parameters
t = 0:.2:50;    % phase angle
x = 0:.1:20;    % x-values

% creates plotting figure
fig = figure(1);

% loops over all phase angles
for i = 1:length(t)
    % calculate y-value with new phase value
    y = cos(x*2*pi/8 + t(i));

    % plot the new curve
    plot(x,y)
    title("cos function"), xlabel("x"), ylabel("cos(x)")

    % optional pause
    % pause(0.05);

    % retrieve the current frame of the figure
    F = getframe(fig);
    % writes the current frame to the writer object
    writeVideo(writerObj, F);
end

% closes writer object
close(writerObj);
disp("Writer object closed successfully")