clc, clear, clear all;

% CREARE IL KKT dati f, g e h:

syms x1 x2 x3 l1 l2 l3 mu1 mu2 mu3 a
%x1^4 + 2*x2^2 -x1 + x2^2;
f = a*(x1^4 + 2*x2^2) + (1-a)*(-x1 + x2^2);
g = [];
h = [];
l = [l1, l2, l3];
m = [mu1, mu2, mu3];

ng = length(g);
nh = length(h);

% Calcolare il gradiente di f
grad_f = gradient(f, [x1, x2]);
eq = grad_f;

for i = 1:ng
    grad_g = gradient(g(i), [x1, x2]);
    eq = eq + l(i)*grad_g;
end

for i = 1:nh
    grad_h = gradient(h(i), [x1, x2]);
    eq = eq + m(i)*grad_h;
end


disp("KKT Equations:");
disp(eq==0);
for i = 1:ng
    disp(l(i)*(g(i)) == 0);
end
for i = 1:nh
    disp(m(i)*h(i) == 0);
end
for i = 1:ng
    disp(g(i) <= 0);
end
for i = 1:nh
    disp(h(i) == 0);
end
for i = 1:ng
    disp(l(i) >= 0);
end
for i = 1:nh
    disp(m(i) >= 0);
end



