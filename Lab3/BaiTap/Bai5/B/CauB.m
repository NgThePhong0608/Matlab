clc;clear all; close all;
syms x;a = 2; b = 5;
y = exp(-x) - 10 *x - 7;
fplot(char(y),[a b]);
f = inline(vectorize(y),'x');
xx = linspace(a,b,1000);
g1 = (exp(-x)-7)./10;dg1 = diff(g1);
fdg1 = inline(vectorize(dg1),'x');
q1 = max(abs(fdg1(xx)));
fg1 = inline(vectorize(g1),'x');
tol = 1e-9;x0=3;x1=fg1(x0);k=1;
while abs(x1-x0) > tol*(1-q1)/q1
    x0=x1;
    x1=fg1(x0);
    k=k+1;
end
fprintf('Nghiem x = %12.10f \nSo vong lap k = %d \n',x1,k);
