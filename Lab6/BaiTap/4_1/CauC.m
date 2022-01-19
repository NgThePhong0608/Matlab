%Monte-Carlo Integration
clc;clear all;close all;
syms x; y = cos(x) / (x.^2 + 1);
S0 = CauCF(y)
f = inline(vectorize(y),'x');
a=0;b=10;
N=5000;
x=a+(b-a)*rand(1,N);
S=0;
for k=1:N
    S=S+f(x(k));
end
format short;
S = S*(b-a)/N
format short;
S1 = quad(f,0,10)