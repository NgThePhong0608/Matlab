%Cong thuc Simpson 1/3
clc;clear all;close all;
syms x;y=cos(x);
f=inline(vectorize(y),'x');
a=0;b=pi/2;
x=a;S=0;
N=5000;dx=(b-a)/(2*N);
for k=1:N
    S=S+dx*(f(x)+4*f(x+dx)+f(x+2*dx))/3;
    x=x+2*dx;
end
S