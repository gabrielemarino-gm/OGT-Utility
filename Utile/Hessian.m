close all; clear; clc;

syms x1 x2 x3 p a
f = x1^3+x2;
H = hessian(f, [x1, x2]);
e = eig(H);

H, e