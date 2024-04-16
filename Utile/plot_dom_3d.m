clear; close all; clc;

% define the range of x,y,z coordinates
step = 1.0;
x = -100:step:100;
y = -100:step:100;
z = -100:step:100;

% generate a grid with all triplets (x,y,z)
[X,Y,Z] = meshgrid(x, y, z);

% DISEQUAZIONI.
% Per mettere il quadrato usare: .^ ---> (X.^2)
I = (X+Y+Z-4<=0) & (-X<=0) & (Y<=0);

% Plot of the points (x,y,z) that verify all inequalities
scatter3(X(I), Y(I), Z(I), 'blue', 'filled', 'o');
xlabel('X'); ylabel('Y'); zlabel('Z');