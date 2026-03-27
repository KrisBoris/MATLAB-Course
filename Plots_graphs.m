% Plots and graphs
%% Section 1
clc, clearvars, close all, format compact

% Plot wave y = A*cos(w*t)
freq = 2;
amp = 5;
t = linspace(0, 1, 200);

y = amp*cos(2*pi*freq.*t);

figure(1), plot(t, y, '-sg'), grid on, xlabel("iksy"), ylabel("igreki")
title("Galaktyka Kurwix została zaatakowana przez złych kosmitów")
legend("Never dies")
xlim([0, 0.5]), ylim([0, 5])

%% Section 2
clc, clearvars, close all, format compact

% vector definition
x = linspace(-10, 10, 1000);
y = (x-2).^2 - 5;
figure(2), plot(x, y, '.g'), hold on
title("Wave displacement vs. time"), xlabel("Time [s]"), ylabel("Displacement [m]")
grid on

% determine minimal value
[min_y_value, min_y_index] = min(y)
min_x = x(min_y_index)

% plot minimal value
plot(min_x, min_y_value, 'mo', 'MarkerFaceColor', 'm', 'MarkerSize', 10)
hold off

% print out the minimal value
min_y_value
disp(min_y_value)
fprintf("Minimal value of y = %0.2f, for x = %0.2f\n", min_y_value, min_x)