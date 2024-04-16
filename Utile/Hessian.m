clear; close all; clc;

syms x1 x2 x3 p a
f = a*(3*x1^2 + x2^2 - x1*x2) + (1-a)*(2*x1-x2);
H = hessian(f, [x1, x2]);
e = eig(H);

H, e