clc;clear all;close all;
syms x;
f=@(x)log(x)^2 -x^2 + 2*x + 3;
ezplot(f,[1 5]);shg;
[x0 y0] = ginput;
[xn fxn] = fsolve(f,x0);
xn, fxn