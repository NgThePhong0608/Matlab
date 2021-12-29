clc;close all; clear all;
syms x y z; q = 1/sqrt((x.^2 + y.^2 + (z-2).^2));
f = inline(vectorize(q),'x','y','z');
triplequad(f,-1,1,-1.5,1.5,-1,1)
a =-1;b=1;
c=-1.5;d=1.5;
e=-1;h=1;q = 1/sqrt((x.^2 + y.^2 + (z-2).^2));
N=10000;
x = a + (b-a)*rand(1,N);
y = c + (d-c)*rand(1,N);
z = e + (h-e)*rand(1,N);

S = 0;
for k=1:N
    S = S + f(x(k),y(k),z(k));
end
S*(b-a)*(d-c)*(h-e)/N
triplequad(f,a,b,c,d,e,h);