% Random numbers & Loops
%% Section 1 - If statement
clc, clearvars

A = randi(5, 1, 10)

tic
count = sum(A == 3)
toc

if count >= 3
    disp("Ooo Panieeee!")
end

%% Section 2 - For loop
clc, clearvars

A = randi(5, 1, 10)
num3 = 0;

tic
for i = 1:length(A)
    if A(i) == 3
        num3 = num3 + 1;
    end
end
toc

if num3 >= 3
    num3
    disp("Trójki wybierz panie")
end

%% Section 3 - While loops
clc, clearvars
counter = 10;

while counter > 0
    counter = counter - 1
end
disp("The end")

%% Section 4 - Custom function
clc, clearvars

var = custom_function(9, 10)