close all; clear; clc;

syms x1 x2 x3 x4 x5 a
f = ;
n = 2;
var = [x1, x2, x3, x4, x5];
grad = [];
for i = 1:n
    df = diff(f, var(i));
    grad = [grad, df];
end

grad