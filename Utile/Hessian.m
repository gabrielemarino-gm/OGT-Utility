close all; clear; clc;

syms x1 x2 x3 p a
f = a*(x1+x2-x3)+(1-a)*(x1-x3);
H = hessian(f, [x1, x2]);
e = eig(H);

H, e