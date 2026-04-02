% Integrals
%% Indefinite integral
clc, clearvars, close all, format compact

syms x z    % Symbolic Math Toolbox variables
y = x.^2 + z;   % Y is function of X and Z
j = int(y, x);  % integral of input1 with respect to input2
myFun = matlabFunction(j)   % convert from symbolic to usable

%% Definite integral
clc, clearvars
z = 10;
y = @(x,z) x.^2 + z;
integral(@(x) y(x,z), 0, 5) % definite integral of x with bounds