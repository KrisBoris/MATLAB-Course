% Reading CSV files
clc, clearvars, close all, format compact

data = readtable("sensordata.csv");

% converts x, y and strain from table to arrays
strain(:,1) = table2array(data(:,1));
strain(:,2) = table2array(data(:,2));
s3 = table2array(data(:,3));
s3 = string(s3);

s3 = split(s3, "!");
s3 = double(s3(:,1));
strain(:,3) = s3;

% plot
figure(1), plot3(strain(:,1), strain(:,2), strain(:,3), ...
    '.c', 'MarkerSize', 20)

title("Strain [MPa] over sensor grid")
xlabel("x dist [m]"), ylabel("y dist [m]"), zlabel("strain [MPa]")
grid on

% scatter
figure(2)
scatter(strain(:,1), strain(:,2), ...
    strain(:,3)*5, ...  % size
    strain(:,3), ... % color
    "filled")

xlabel("x dist [m]"), ylabel("y dist [m]"), 
title("Strain [MPa] over sensor grid")
cc = colorbar(); title(cc, "MPa")
xlim([0,11]), ylim([0,11]), grid on