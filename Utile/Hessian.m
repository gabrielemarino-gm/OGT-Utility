clear; close all; clc;

syms x1 x2 x3 p a
%-x1 + x2^2
f = -x1 + x2^2;
H = hessian(f, [x1, x2]);
e = eig(H);

H, e