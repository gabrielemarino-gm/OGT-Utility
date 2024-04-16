clc, clear all

C = [
        5 4 3 5;
        6 7 8 2;
        5 3 4 4;
    ];

m = size(C,1);
n = size(C,2);
c = [zeros(m,1);1];
A = [C', -ones(n,1)]; 
b = zeros(n,1); 
Aeq = [ones(1,m),0]; 
beq = 1;
lb = [zeros(m,1);-inf];  
ub =[ ];

[sol, Val, exitflag, output, lambda] = linprog(c, A,b, Aeq, beq, lb, ub);
x = sol(1:m)
y = lambda.ineqlin