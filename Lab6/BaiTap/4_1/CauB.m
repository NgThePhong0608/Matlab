clc;clear all;close all;
syms x; y = cos(x) / (x.^2 + 1);
f = inline(vectorize(y),'x');
a=0;b=10;
x=a;S=0;
N=5000;dx=(b-a)/(3*N);
for k=1:N
    S=S+dx*3*(f(x)+3*f(x+dx)+3*f(x+2*dx)+f(x+3*dx))/8;
    x=x+3*dx;
end
S
S1 = quad(f,0,10)