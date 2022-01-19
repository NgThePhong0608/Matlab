clc;close all; clear all;
syms x y; z = (y.^3*exp(y))/(x.^2 + y.^2);
f = inline(vectorize(z),'x','y');
a = 0; b = sqrt(2);
c = 0; d= 2*pi;
N=5000;
x = a + (b-a)*rand(1,N);
y = c + (d-c)*rand(1,N);
S = 0;
for k=1:N
    S = S + f(x(k),y(k));
end

(S*(b-a)*(d-c))./N
dblquad(f,a,b,c,d)

