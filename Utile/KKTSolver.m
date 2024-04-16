clear; clear all;

syms a x1 x2 l;

f = a + 2*(1-a)*x1+2*l*x1==0,
    4*a*x2+8*(1-a)*x2+4*l*x2==0,
    l*(x1^2+2*x2^2-4)==0,
    l>=0,
    x1^2+2*x2^2-4<=0,
    0<=a<=1;

solve(f,[x1;x2])