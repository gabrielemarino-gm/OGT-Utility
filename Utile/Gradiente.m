close all; clear; clc;

syms x1 x2 x3 x4 x5 a
f = x1^2 + x2^2 - 2*x1*x2 + (1/(x1+1));
n = 2;
var = [x1, x2, x3, x4, x5];
grad = [];
for i = 1:n
    df = diff(f, var(i));
    grad = [grad, df];
end

grad