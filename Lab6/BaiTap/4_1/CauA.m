clc;clear all; close all;
syms x; y = cos(x) / (x.^2 + 1);
f = inline(vectorize(y),'x');
a = 0;b = 10;
N = 5000;
x = a; S = 0;
dx = (b - a)/N;

for k=1:N
    S = S + dx*(f(x) + f(x+dx))/2;
    x = x + dx;
end
S
S1 = quad(f,0,10)