clc;close all; clear all;
syms x y z; f = sqrt((x.^2 + y.^2 + (z-2).^2));
f = inline(vectorize(1/f),'x','y','z');
a=0;b=1;
c=0;d=2*pi;
e=-1;h=1;
N=10000;
x = a + (b-a)*rand(1,N);
y = c + (d-c)*rand(1,N);
z = e + (h-e)*rand(1,N);
S = 0;
for k=1:N
    S = S + f(x(k),y(k),z(k));
end
S = S*(b-a)*(d-c)*(h-e)/N
S1 = triplequad(f,a,b,c,d,e,h)