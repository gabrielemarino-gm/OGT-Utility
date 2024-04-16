clear; close all; clc;

h = 0.01;
[x,y] = meshgrid(-sqrt(3):h:sqrt(3),0:h:3);

% Inserire le disequazioni qui in and &
idx = double(-2*x+y-2<=0) ; 
figure(1)

% xlabel('x'), ylabel('y')
pcolor(x, y, idx)
shading interp 
cmap = [255 255 255;0 0 255]/255;
colormap(cmap)