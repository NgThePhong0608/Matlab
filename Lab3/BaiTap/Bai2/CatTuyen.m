clc;clear all; close all;
syms x; y = (log10(x)/log10(exp(1)))^2 - x^2 + 2*x +3;
a = 1;b = 5;
fplot(char(y), [a b]);
f = inline(vectorize(y),'x');
tol = 1e-9;
x0=2;
x1=4.5;
x2=x0-(f(x0).*((x1-x0))/(f(x1)-f(x0)));
k = 1;
while abs(f(x2)>tol)
    x0=x1;
    x1 = x2;
    x2=x0-(f(x0).*((x1-x0))/(f(x1)-f(x0)));
    k=k+1;
end;
fprintf('Nghiem x = %.10f \n',x2);
fprintf('So vong lap k = %d \n',k);