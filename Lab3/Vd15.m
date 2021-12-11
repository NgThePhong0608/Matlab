clc;clear all;close all;
fx=@(x) x.^4-20*x.^2+20;ezplot(fx,[-5 5]);shg
% Cuc tieu
[x0 y0]=ginput;
[xmin fxmin]=fminsearch(fx,x0);
% Cuc dai
fx=@(x)(x^4-20*x.^2+20);ezplot(fx,[-5 5]);shg
[x0 y0]=ginput;
[xmax fxmax]=fminsearch(fx,x0);
xmax, -fxmax,xmin, fxmin
