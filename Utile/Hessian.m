close all; clear; clc;

syms x1 x2 x3 x4 p a
% MODIFICARE
    f = a*(x1*x2)+(1-a)*(x1^2+2*x2^2-2*x2);
    var = [x1, x2];

H = hessian(f, var);
H
eig(H)

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