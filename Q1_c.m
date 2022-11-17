clc; clear; close all;

x = pi/4; h = 0.001;

% Part a) i: Using First Derivative formula
df1 = (cos(x+h) - cos(x))/h;
er1 = abs((-sqrt(2)/2 - df1));
disp("a) i: Using First Derivative formula, f'(pi/4) = "+num2str(df1))
disp("Error = "+num2str(er1))
disp("_____________________________________________________")

% Part a) i: Using Center-Difference formula
df2 = (cos(x+h) - cos(x-h))/(2*h);
er2 = abs((-sqrt(2)/2 - df2));
disp("a) iii: Using Center-Difference formula, f'(pi/4) = "+num2str(df2))
disp("Error = "+num2str(er2))
disp("_____________________________________________________")

% Part a) iii: Using Richardson Extrapolation formula
phi0h = (cos(x + h) - cos(x - h))/(2*h);
phi0hByTwo = (cos(x + h/2) - cos(x - h/2))/(h);
df3 = 4/3*phi0hByTwo - 1/3*phi0h;
er3 = abs((-sqrt(2)/2 - df3));
disp("a) iii: Using Richardson Extrapolation, f'(pi/4) = "+num2str(df3))
disp("Error = "+num2str(er3))
disp("_____________________________________________________")

% Part b) Second Derivative formula:
ddf = (cos(x+h) - 2*cos(x) + cos(x-h))/(h^2);
err = abs((-sqrt(2)/2 - ddf));
disp("b) Using Second Derivative formula, f''(pi/4) = "+num2str(ddf))
disp("Error = "+num2str(err))
disp("_____________________________________________________")