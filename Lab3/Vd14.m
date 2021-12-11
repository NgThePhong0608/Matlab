clc;clear all;close all;
fx=@(x) x^4-20*x^2+20;
ezplot(fx,[-5 5]);
% shg
[x0 y0]=ginput;
[xn fxn]=fsolve(fx,x0)