close all; clear; clc;

syms x1 x2 x3 x4 p a
% MODIFICARE
    f = x1^2 + x2^2 - x1*x2 - 3*x1 -4*x2 - 5*x3;
    var = [x1, x2, x3];

H = hessian(f, var);

% Bisogna convertire H in una semplice matrice
Hes = zeros(length(var), length(var));
for i = 1:length(var)
    for j = 1:length(var)
        Hes(i, j) = H(i, j);
    end
end

% Print
disp("Hessiana")
disp(Hes)
disp("Autovalori Hessiana")
disp(eig(Hes))